 
import 'package:ai_api_layer_structure/ai/middleware/resilient_ai_provider.dart';
import 'package:ai_api_layer_structure/ai/observer/ai_observer.dart';
import 'package:ai_api_layer_structure/ai/provider/ai_provider.dart';
import 'package:ai_api_layer_structure/ai/provider/openai_provider.dart';
import 'package:ai_api_layer_structure/ai/service/ai_service.dart';
import 'package:get_it/get_it.dart';

void registerAIDependencies(GetIt sl, {required AIConfig config}) {
  // Raw provider
  sl.registerLazySingleton<AIProvider>(
    () => OpenAIProvider(apiKey: config.apiKey), 
  );

  // Wrap with resilience
  sl.registerLazySingleton<ResilientAIProvider>(
    () => ResilientAIProvider(
      inner: sl<AIProvider>(),
      maxRetries: config.maxRetries,
    ),
  );

  // Observer
  sl.registerLazySingleton<AIObserver>(() => LoggingAIObserver());

  // Service — what features consume
  sl.registerLazySingleton<AIService>(
    () => AIServiceImpl(
      provider: sl<ResilientAIProvider>(),
      observer: sl<AIObserver>(),
    ),
  );
}
