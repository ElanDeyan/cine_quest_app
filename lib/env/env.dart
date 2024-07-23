import 'package:envied/envied.dart';

part 'env.g.dart';

@envied
abstract class Env {
  @EnviedField()
  static const String watchModeApiKey = _Env.watchModeApiKey;
}
