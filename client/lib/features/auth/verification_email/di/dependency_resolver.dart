import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/repository/auth_repository.dart';
import 'package:client/features/auth/verification_email/cubit/verification_email_cubit.dart';

class VerificationDependencyResolver {
  static void register() {
    DependencyProvider.registerFactory<VerificationEmailCubit>(
      () => VerificationEmailCubit(
        repository: DependencyProvider.get<AuthRepository>(),
      ),
    );
  }
}
