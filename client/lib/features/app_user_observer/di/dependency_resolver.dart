import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/app_user_observer/bloc/app_bloc.dart';
import 'package:client/features/app_user_observer/repository/auth_repository.dart';

class AppAuthDependencyResolver {
  static void register() {
    DependencyProvider.registerLazySingleton<AuthRepository>(
      () => AuthRepository(),
    );

    DependencyProvider.registerLazySingleton<AppBloc>(
      () => AppBloc(
        repository: DependencyProvider.get<AuthRepository>(),
      ),
    );
  }
}
