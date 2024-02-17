import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/repository/auth_repository.dart';
import 'package:client/features/sing_up/cubit/sign_up_form_cubit.dart';

class SignUpDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<SignUpFormCubit>(
      () => SignUpFormCubit(
        repository: DependencyProvider.get<AuthRepository>(),
      ),
    );
  }
}
