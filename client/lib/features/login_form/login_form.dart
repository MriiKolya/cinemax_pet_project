import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/login_form/cubit/login_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/buttons/cinemax_text_button.dart';
import 'package:ui_kit/component/input_field/input_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginFormCubit(),
      child: BlocConsumer<LoginFormCubit, LoginFormState>(
          builder: (context, state) {
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              InputField(
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: state.showErrorMessage == true
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                labelText: 'Email Address',
                validator: (_) => state.emailAddress.value.fold<String?>(
                  (f) => f.maybeMap<String?>(
                    invalidEmail: (_) => '*Invalid Email',
                    emptyValue: (_) => '*required value',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
                onChanged: (emal) =>
                    context.read<LoginFormCubit>().emailChanged(emal),
              ),
              const SizedBox(height: 50),
              InputField(
                keyboardType: TextInputType.visiblePassword,
                validator: (_) => state.password.value.fold<String?>(
                  (f) => f.maybeMap<String?>(
                    invalidPasswordFormat: (_) => '*Invalid password format',
                    shortInput: (_) => '*value is short',
                    emptyValue: (_) => '*required value',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
                autovalidateMode: state.showErrorMessage == true
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                labelText: 'Password',
                isPassword: true,
                onChanged: (password) =>
                    context.read<LoginFormCubit>().passwordChanged(password),
              ),
              SizedBox(
                width: 150,
                child: CinemaxTextButton(
                    label: 'Forgot Password?',
                    fontSize: 13,
                    onPressed: () => context.goNamed(
                          AppRouterName.resetPasswordName,
                        )),
              ),
              const Spacer(),
              CinemaxFilledButton(
                label: 'Login',
                onPressed: () async {
                  context.read<LoginFormCubit>().loginSubmitted();
                },
              ),
              const Spacer(),
            ],
          ),
        );
      }, listener: (context, state) {
        if (state.isSubmitting) {
          context.goNamed(AppRouterName.homeName);
        }
      }),
    );
  }
}
