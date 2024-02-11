import 'package:client/config/router/app_router_name.dart';
import 'package:client/core/extension/font_weight_extension.dart';

import 'package:client/features/sign_up_form/cubit/sign_up_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/check_box/check_box.dart';
import 'package:ui_kit/component/input_field/input_field.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class SingUpForm extends StatelessWidget {
  const SingUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpFormCubit(),
      child: BlocConsumer<SignUpFormCubit, SignUpFormState>(
          builder: (context, state) {
        return Expanded(
          child: Column(
            children: [
              const Spacer(),
              InputField(
                autovalidateMode: state.showErrorMessage == true
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                labelText: 'Full Name',
                validator: (_) => state.name.value.fold<String?>(
                  (f) => f.maybeMap<String?>(
                    emptyValue: (_) => '*required value',
                    shortInput: (_) => 'value is short',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
                onChanged: (name) =>
                    context.read<SignUpFormCubit>().nameChanged(name),
              ),
              const SizedBox(height: 40),
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
                    context.read<SignUpFormCubit>().emailChanged(emal),
              ),
              const SizedBox(height: 40),
              InputField(
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
                    context.read<SignUpFormCubit>().passwordChanged(password),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CinemaxCheckBox(
                      boxShape: BoxShape.rectangle,
                      value: state.agreeTerms,
                      onChanged: () {
                        context.read<SignUpFormCubit>().agreeTermsToggled();
                      }),
                  const SizedBox(width: 5),
                  Flexible(
                    child: Text(
                      'I agree to the Terms and Services and Privacy Policy',
                      style: context.textStyle.h4.copyWith(
                        fontWeight: FontWeightStyle.medium.fontWeight,
                        color: state.agreeTerms
                            ? TextColor.grey
                            : SecondaryColor.red,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              CinemaxFilledButton(
                label: 'Sign Up',
                onPressed: () async {
                  context.read<SignUpFormCubit>().signUpSubmitted();
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
