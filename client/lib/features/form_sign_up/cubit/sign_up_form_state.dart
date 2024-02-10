part of 'sign_up_form_cubit.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required EmailAddress emailAddress,
    required Password password,
    required Name name,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessage,
    @Default(false) bool agreeTerms,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        name: Name(''),
      );
}
