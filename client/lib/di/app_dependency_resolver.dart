import 'package:client/features/app_user_observer/di/dependency_resolver.dart';

class AppDependencyResolver {
  static void register() {
    AppAuthDependencyResolver.register();
  }
}
