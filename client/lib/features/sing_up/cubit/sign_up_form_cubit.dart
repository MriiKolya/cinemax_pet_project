import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/core/validator/email/email.dart';
import 'package:client/core/validator/name/name.dart';
import 'package:client/core/validator/password/password.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_form_cubit.freezed.dart';
part 'sign_up_form_state.dart';

class SignUpFormCubit extends Cubit<SignUpFormState> {
  SignUpFormCubit() : super(SignUpFormState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(
      emailAddress: EmailAddress(email),
      authFailureOrSuccess: null,
    ));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
      password: Password(password),
      authFailureOrSuccess: null,
    ));
  }

  void nameChanged(String name) {
    emit(state.copyWith(
      name: Name(name),
      authFailureOrSuccess: null,
    ));
  }

  void agreeTermsToggled() {
    emit(state.copyWith(agreeTerms: !state.agreeTerms));
    debugPrint('isAgreeTerms ${state.agreeTerms.toString()}');
  }

  void signUpSubmitted() {
    final isEmailValid = state.emailAddress.value.isRight();
    final isPasswordValid = state.password.value.isRight();
    final isNameValid = state.name.value.isRight();
    final isAgreeTerms = state.agreeTerms;

    if (isEmailValid && isPasswordValid && isNameValid && isAgreeTerms) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: null,
        ),
      );
      return;
    }
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccess:
          (isEmailValid && isPasswordValid && isNameValid && isAgreeTerms)
              ? right(unit)
              : null,
    ));
  }
}
