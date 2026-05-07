
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ai_provider.freezed.dart';

class AIConfig {
  const AIConfig({
    required this.apiKey,
    this.maxRetries = 3,
  });

  final String apiKey;
  final int maxRetries;
}

/// The single contract every AI provider must fulfill.
/// Your features never import anything below this line.
abstract class AIProvider {
  Future<AIResponse> complete(AIRequest request);
  Stream<AIResponseChunk> stream(AIRequest request);
  Future<void> dispose();
}

@freezed
abstract class AIRequest with _$AIRequest {
  const factory AIRequest({
    required String prompt,
    required String model,
    @Default(1024) int maxTokens,
    @Default(0.7) double temperature,
    String? systemPrompt,
    @Default([]) List<AIMessage> history,
    Map<String, dynamic>? metadata,
  }) = _AIRequest;
}

@freezed
abstract class AIResponse with _$AIResponse {
  const factory AIResponse({
    required String content,
    required String model,
    required AITokenUsage tokenUsage,
    required Duration latency,
    Map<String, dynamic>? raw,
  }) = _AIResponse;
}

@freezed
abstract class AITokenUsage with _$AITokenUsage {
  const factory AITokenUsage({
    required int promptTokens,
    required int completionTokens,
    required int totalTokens,
  }) = _AITokenUsage;
}

@freezed
abstract class AIResponseChunk with _$AIResponseChunk {
  const factory AIResponseChunk({
    required String delta,
    required bool isComplete,
    AITokenUsage? finalUsage,
  }) = _AIResponseChunk;
}

@freezed
abstract class AIMessage with _$AIMessage {
  const factory AIMessage({
    required AIRole role,
    required String content,
  }) = _AIMessage;
}

enum AIRole { user, assistant, system }