import 'package:ai_api_layer_structure/ai/provider/ai_provider.dart';
import 'package:ai_api_layer_structure/ai/service/ai_service.dart';
import 'package:ai_api_layer_structure/di/ai_module.dart';
import 'package:get_it/get_it.dart';

void main(List<String> arguments) async {
  final sl = GetIt.instance;
  registerAIDependencies(sl, config: const AIConfig(apiKey: 'YOUR_KEY'));

  final service = sl<AIService>();
  final response = await service.complete(
    const AIRequest(prompt: 'Say hello.', model: 'gpt-4o-mini'),
  );
  print(response.content);
}
