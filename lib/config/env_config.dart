import 'package:envied/envied.dart';

part 'env_config.g.dart';

@Envied(path: '.env')
class EnvConfig {
  static final EnvConfig _instance = EnvConfig._internal();

  factory EnvConfig() {
    return _instance;
  }

  EnvConfig._internal();

  @EnviedField(varName: 'API_URL', obfuscate: true)
  static final String apiUrl = _EnvConfig.apiUrl;
}
