// lib/ai/provider/openai_provider.dart

import 'dart:convert';
import 'package:dio/dio.dart';
import 'ai_provider.dart';

class OpenAIProvider implements AIProvider {
  final Dio _dio;
  final String _apiKey;
  final String _baseUrl;

  OpenAIProvider({
    required String apiKey,
    String baseUrl = 'https://api.openai.com/v1',
    Dio? dio,
  }) : _apiKey = apiKey,
       _baseUrl = baseUrl,
       _dio = dio ?? _buildDio(apiKey, baseUrl);

  static Dio _buildDio(String apiKey, String baseUrl) {
    return Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Authorization': 'Bearer $apiKey',
          'Content-Type': 'application/json',
        },
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 60),
      ),
    );
  }

  @override
  Future<AIResponse> complete(AIRequest request) async {
    final stopwatch = Stopwatch()..start();

    final response = await _dio.post(
      '/chat/completions',
      data: _toOpenAIPayload(request),
    );

    stopwatch.stop();

    return _mapResponse(response.data, stopwatch.elapsed);
  }

  @override
  Stream<AIResponseChunk> stream(AIRequest request) async* {
    final response = await _dio.post<ResponseBody>(
      '/chat/completions',
      data: {..._toOpenAIPayload(request), 'stream': true},
      options: Options(responseType: ResponseType.stream),
    );

    await for (final chunk in response.data!.stream) {
      final lines = utf8.decode(chunk).split('\n');
      for (final line in lines) {
        if (line.startsWith('data: ') && line != 'data: [DONE]') {
          final json = jsonDecode(line.substring(6));
          final delta = json['choices'][0]['delta']['content'] as String? ?? '';
          final isComplete = json['choices'][0]['finish_reason'] != null;
          yield AIResponseChunk(delta: delta, isComplete: isComplete);
        }
      }
    }
  }

  Map<String, dynamic> _toOpenAIPayload(AIRequest request) {
    final messages = <Map<String, dynamic>>[];

    if (request.systemPrompt != null) {
      messages.add({'role': 'system', 'content': request.systemPrompt});
    }

    for (final msg in request.history) {
      messages.add({'role': msg.role.name, 'content': msg.content});
    }

    messages.add({'role': 'user', 'content': request.prompt});

    return {
      'model': request.model,
      'messages': messages,
      'max_tokens': request.maxTokens,
      'temperature': request.temperature,
    };
  }

  AIResponse _mapResponse(Map<String, dynamic> data, Duration latency) {
    final choice = data['choices'][0];
    final usage = data['usage'];

    return AIResponse(
      content: choice['message']['content'] as String,
      model: data['model'] as String,
      latency: latency,
      tokenUsage: AITokenUsage(
        promptTokens: usage['prompt_tokens'] as int,
        completionTokens: usage['completion_tokens'] as int,
        totalTokens: usage['total_tokens'] as int,
      ),
      raw: data,
    );
  }

  @override
  Future<void> dispose() async {
    _dio.close();
  }
}
