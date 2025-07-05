import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'ENV_NAME', obfuscate: true)
  static final String envName = _Env.envName;
}
