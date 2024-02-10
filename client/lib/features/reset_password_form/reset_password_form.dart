import 'package:client/config/router/app_router_name.dart';
import 'package:client/features/reset_password_form/cubit/reset_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/input_field/input_field.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordCubit(),
      child: BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
          builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(),
            InputField(
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
                  context.read<ResetPasswordCubit>().emailChanged(emal),
            ),
            const Spacer(),
            CinemaxFilledButton(
              label: 'Next',
              onPressed: () async {
                context.read<ResetPasswordCubit>().resetPasswordSubmitted();
              },
            ),
            const Spacer(),
            const Spacer(),
          ],
        );
      }, listener: (context, state) {
        if (state.isSubmitting) {
          context.goNamed(
            AppRouterName.verificationEmailName,
            extra: state.emailAddress.value.getOrElse(() => ''),
          );
        }
      }),
    );
  }
}
