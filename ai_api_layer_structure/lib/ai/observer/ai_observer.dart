// lib/ai/observer/ai_observer.dart

import 'package:ai_api_layer_structure/ai/error/ai_exception.dart';
import 'package:ai_api_layer_structure/ai/provider/ai_provider.dart';

abstract class AIObserver {
  void onRequestStart(AIRequest request);
  void onRequestSuccess(AIRequest request, AIResponse response);
  void onRequestError(AIRequest request, AIException error);
}

// Concrete implementation — wire to your analytics/logging of choice
class LoggingAIObserver implements AIObserver {
  @override
  void onRequestStart(AIRequest request) {
    print('[AI] Request: ${request.model} | ${request.prompt.length} chars');
  }

  @override
  void onRequestSuccess(AIRequest request, AIResponse response) {
    print(
      '[AI] Success: ${response.latency.inMilliseconds}ms | '
      '${response.tokenUsage.totalTokens} tokens',
    );
  }

  @override
  void onRequestError(AIRequest request, AIException error) {
    print(
      '[AI] Error: ${error.runtimeType} | retryable: ${error.isRetryable}',
    );
  }
}
