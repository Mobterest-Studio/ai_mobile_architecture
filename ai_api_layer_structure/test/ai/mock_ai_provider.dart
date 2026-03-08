// test/ai/mock_ai_provider.dart

import 'package:ai_api_layer_structure/ai/error/ai_exception.dart';
import 'package:ai_api_layer_structure/ai/provider/ai_provider.dart';

class MockAIProvider implements AIProvider {
  final List<AIRequest> capturedRequests = [];
  AIResponse? mockResponse;
  AIException? mockError;
  Duration simulatedLatency;

  MockAIProvider({
    this.mockResponse,
    this.mockError,
    this.simulatedLatency = Duration.zero,
  });

  @override
  Future<AIResponse> complete(AIRequest request) async {
    capturedRequests.add(request);
    await Future.delayed(simulatedLatency);

    if (mockError != null) throw mockError!;

    return mockResponse ??
        AIResponse(
          content: 'Mock response for: ${request.prompt}',
          model: request.model,
          latency: simulatedLatency,
          tokenUsage: const AITokenUsage(
            promptTokens: 10,
            completionTokens: 20,
            totalTokens: 30,
          ),
        );
  }

  @override
  Stream<AIResponseChunk> stream(AIRequest request) async* {
    capturedRequests.add(request);
    yield AIResponseChunk(delta: 'Mock ', isComplete: false);
    yield AIResponseChunk(delta: 'stream ', isComplete: false);
    yield AIResponseChunk(delta: 'response.', isComplete: true);
  }

  @override
  Future<void> dispose() async {}
}
