import 'package:client/features/auth/di/dependency_resolver.dart';

class AppDependencyResolver {
  static void register() {
    AuthDependencyResolver.register();
  }
}
