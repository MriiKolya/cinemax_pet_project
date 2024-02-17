import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/repository/auth_repository.dart';
import 'package:client/features/login/cubit/login_form_cubit.dart';

class LoginDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<LoginFormCubit>(
      () => LoginFormCubit(
        repository: DependencyProvider.get<AuthRepository>(),
      ),
    );
  }
}
