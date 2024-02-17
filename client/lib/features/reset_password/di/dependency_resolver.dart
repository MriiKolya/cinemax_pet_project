import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/repository/auth_repository.dart';
import 'package:client/features/reset_password/cubit/reset_password_cubit.dart';

class ResetPasswordDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<ResetPasswordCubit>(
      () => ResetPasswordCubit(
        repository: DependencyProvider.get<AuthRepository>(),
      ),
    );
  }
}
