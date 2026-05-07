// lib/ai/middleware/resilient_ai_provider.dart 

import 'dart:async';
import 'package:dio/dio.dart';
import '../provider/ai_provider.dart';
import '../error/ai_exception.dart';

/// Wraps any AIProvider with retry logic, timeout, and error normalization.
/// Your features get resilience for free by using this instead of the raw provider.
class ResilientAIProvider implements AIProvider {
  final AIProvider _inner;
  final int maxRetries;
  final Duration retryDelay;
  final Duration requestTimeout;

  ResilientAIProvider({
    required AIProvider inner,
    this.maxRetries = 3,
    this.retryDelay = const Duration(seconds: 2),
    this.requestTimeout = const Duration(seconds: 30),
  }) : _inner = inner;

  @override
  Future<AIResponse> complete(AIRequest request) async {
    return _withRetry(() => _inner.complete(request).timeout(requestTimeout));
  }

  @override
  Stream<AIResponseChunk> stream(AIRequest request) {
    return _inner.stream(request);
  }

  Future<T> _withRetry<T>(Future<T> Function() operation) async {
    int attempt = 0;

    while (true) {
      try {
        return await operation();
      } catch (e) {
        attempt++;
        final exception = _normalize(e);

        // Don't retry on non-retryable errors
        if (!exception.isRetryable || attempt >= maxRetries) {
          throw exception;
        }

        // Exponential backoff
        final delay = retryDelay * (attempt * attempt);
        await Future.delayed(delay);
      }
    }
  }

  AIException _normalize(Object error) {
    if (error is AIException) return error;

    if (error is DioException) {
      return switch (error.type) {
        DioExceptionType.connectionTimeout ||
        DioExceptionType.sendTimeout ||
        DioExceptionType.receiveTimeout =>
          AIException.timeout(original: error),
        DioExceptionType.badResponse => switch (error.response?.statusCode) {
          401 => AIException.unauthorized(original: error),
          429 => AIException.rateLimited(
              retryAfter: _parseRetryAfter(error.response),
              original: error,
            ),
          500 || 502 || 503 => AIException.serverError(original: error),
          _ => AIException.unknown(original: error),
        },
        _ => AIException.network(original: error),
      };
    }

    if (error is TimeoutException) {
      return AIException.timeout(original: error);
    }

    return AIException.unknown(original: error);
  }

  Duration? _parseRetryAfter(Response? response) {
    final header = response?.headers.value('retry-after');
    if (header == null) return null;
    final seconds = int.tryParse(header);
    return seconds != null ? Duration(seconds: seconds) : null;
  }

  @override
  Future<void> dispose() => _inner.dispose();
}