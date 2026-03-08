// test/ai/ai_service_test.dart

import 'package:ai_api_layer_structure/ai/error/ai_exception.dart';
import 'package:ai_api_layer_structure/ai/middleware/resilient_ai_provider.dart';
import 'package:ai_api_layer_structure/ai/observer/ai_observer.dart';
import 'package:ai_api_layer_structure/ai/provider/ai_provider.dart';
import 'package:ai_api_layer_structure/ai/service/ai_service.dart';
import 'package:test/test.dart';

import 'mock_ai_provider.dart';

void main() {
  group('AIService', () {
    late MockAIProvider mockProvider;
    late AIService service;

    setUp(() {
      mockProvider = MockAIProvider();
      service = AIServiceImpl(
        provider: ResilientAIProvider(inner: mockProvider, maxRetries: 2),
        observer: LoggingAIObserver(),
      );
    });

    test('returns response on success', () async {
      mockProvider.mockResponse = AIResponse(
        content: 'Hello world',
        model: 'gpt-4',
        latency: const Duration(milliseconds: 200),
        tokenUsage: const AITokenUsage(
          promptTokens: 5,
          completionTokens: 10,
          totalTokens: 15,
        ),
      );

      final request = AIRequest(prompt: 'Say hello', model: 'gpt-4');
      final response = await service.complete(request);

      expect(response.content, equals('Hello world'));
      expect(mockProvider.capturedRequests.length, equals(1));
    });

    test('retries on server error', () async {
      int attempts = 0;
      mockProvider = MockAIProvider()..mockError = AIException.serverError();

      // After 2 failures it should throw — test that retries happened
      await expectLater(
        () => service.complete(AIRequest(prompt: 'test', model: 'gpt-4')),
        throwsA(isA<AIServerException>()),
      );
    });

    test('does not retry on unauthorized', () async {
      mockProvider.mockError = AIException.unauthorized();

      await expectLater(
        () => service.complete(AIRequest(prompt: 'test', model: 'gpt-4')),
        throwsA(isA<AIUnauthorizedException>()),
      );

      // Only 1 attempt — unauthorized is not retryable
      expect(mockProvider.capturedRequests.length, equals(1));
    });
  });
}
