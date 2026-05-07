 

import 'package:ai_api_layer_structure/ai/error/ai_exception.dart';
import 'package:ai_api_layer_structure/ai/observer/ai_observer.dart';
import 'package:ai_api_layer_structure/ai/provider/ai_provider.dart';

abstract class AIService {
  Future<AIResponse> complete(AIRequest request);
  Stream<AIResponseChunk> stream(AIRequest request);
}

 

class AIServiceImpl implements AIService {
  final AIProvider _provider;
  final AIObserver _observer;

  AIServiceImpl({required AIProvider provider, required AIObserver observer})
    : _provider = provider,
      _observer = observer;

  @override
  Future<AIResponse> complete(AIRequest request) async {
    _observer.onRequestStart(request);

    try {
      final response = await _provider.complete(request);
      _observer.onRequestSuccess(request, response);
      return response;
    } on AIException catch (e) {
      _observer.onRequestError(request, e);
      rethrow;
    }
  }

  @override
  Stream<AIResponseChunk> stream(AIRequest request) {
    _observer.onRequestStart(request);
    return _provider.stream(request);
  }
}
