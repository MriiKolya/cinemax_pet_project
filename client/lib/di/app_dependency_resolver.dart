import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/di/dependency_resolver.dart';
import 'package:client/features/login/di/dependency_resolver.dart';
import 'package:client/features/new_movie_list/di/dependency_resolver.dart';
import 'package:client/features/reset_password/di/dependency_resolver.dart';
import 'package:client/features/sing_up/di/dependency_resolver.dart';
import 'package:client/features/verification_email/di/dependency_resolver.dart';
import 'package:dio/dio.dart';

class AppDependencyResolver {
  static void register() {
    DependencyProvider.registerLazySingleton<Dio>(
      () => Dio(),
    );
    AuthDependencyResolver.register();
    LoginDependencyResolver.register();
    SignUpDependencyResolver.register();
    ResetPasswordDependencyResolver.register();
    VerificationDependencyResolver.register();
    NewMovieDependencyResolver.register();
  }
}
