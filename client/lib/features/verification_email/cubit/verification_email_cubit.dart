import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'verification_email_state.dart';
part 'verification_email_cubit.freezed.dart';

class VerificationEmailCubit extends Cubit<VerificationEmailState> {
  VerificationEmailCubit() : super(VerificationEmailState.initial());

  void resetCode() {
    //TODO реализация сброса пароля
    emit(state.copyWith(
      disableResendButton: true,
    ));
  }

  void codeChanged(String code) {
    emit(state.copyWith(code: code));
  }

  void onSubmited() {
    emit(state.copyWith(showErrorMessage: true));
  }
}
