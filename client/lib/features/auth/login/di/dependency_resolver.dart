import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/login/cubit/login_form_cubit.dart';
import 'package:client/features/auth/repository/auth_repository.dart';

class LoginDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<LoginFormCubit>(
      () => LoginFormCubit(
        repository: DependencyProvider.get<AuthRepository>(),
      ),
    );
  }
}
