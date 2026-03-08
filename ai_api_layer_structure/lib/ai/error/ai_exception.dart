// lib/ai/error/ai_exception.dart

sealed class AIException implements Exception {
  final Object? original;
  final bool isRetryable;

  const AIException({this.original, required this.isRetryable});

  factory AIException.timeout({Object? original}) = AITimeoutException;
  factory AIException.rateLimited({Duration? retryAfter, Object? original}) =
      AIRateLimitedException;
  factory AIException.unauthorized({Object? original}) =
      AIUnauthorizedException;
  factory AIException.serverError({Object? original}) = AIServerException;
  factory AIException.network({Object? original}) = AINetworkException;
  factory AIException.unknown({Object? original}) = AIUnknownException;
}

class AITimeoutException extends AIException {
  const AITimeoutException({super.original}) : super(isRetryable: true);
}

class AIRateLimitedException extends AIException {
  final Duration? retryAfter;
  const AIRateLimitedException({this.retryAfter, super.original})
    : super(isRetryable: true);
}

class AIUnauthorizedException extends AIException {
  const AIUnauthorizedException({super.original}) : super(isRetryable: false);
}

class AIServerException extends AIException {
  const AIServerException({super.original}) : super(isRetryable: true);
}

class AINetworkException extends AIException {
  const AINetworkException({super.original}) : super(isRetryable: true);
}

class AIUnknownException extends AIException {
  const AIUnknownException({super.original}) : super(isRetryable: false);
}
