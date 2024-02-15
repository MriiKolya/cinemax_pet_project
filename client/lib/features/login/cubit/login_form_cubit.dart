import 'package:client/core/validator/auth_failure/auth_failure.dart';
import 'package:client/core/validator/email/email.dart';
import 'package:client/core/validator/password/password.dart';
import 'package:client/features/auth/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_form_state.dart';
part 'login_form_cubit.freezed.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  AuthRepository repository = AuthRepository();
  LoginFormCubit() : super(LoginFormState.initial());

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

  void loginSubmitted() {
    final isEmailValid = state.emailAddress.value.isRight();
    final isPasswordValid = state.password.value.isRight();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: null,
        ),
      );
      try {
        repository.loginWithEmailAndPassword(
            email: 'kolyamriy16@gmail.com', password: '251208asdfG');
        debugPrint(repository.user.toString());
      } catch (e) {
        debugPrint(e.toString());
      }

      return;
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessage: true,
        authFailureOrSuccess:
            (isEmailValid && isPasswordValid) ? right(unit) : null,
      ),
    );
  }
}
