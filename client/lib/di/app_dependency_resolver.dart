import 'package:client/features/auth/di/dependency_resolver.dart';
import 'package:client/features/login/di/dependency_resolver.dart';
import 'package:client/features/sing_up/di/dependency_resolver.dart';

class AppDependencyResolver {
  static void register() {
    AuthDependencyResolver.register();
    LoginDependencyResolver.register();
    SignUpDependencyResolver.register();
  }
}
