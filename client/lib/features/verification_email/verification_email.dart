import 'package:client/features/verification_email/cubit/verification_email_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/component/conponent.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class VerificationEmailForm extends StatelessWidget {
  const VerificationEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle;
    return BlocProvider(
      create: (context) => VerificationEmailCubit(),
      child: BlocBuilder<VerificationEmailCubit, VerificationEmailState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              CinemaxPinput(
                errorText: 'Invalid code',
                forceErrorState: state.showErrorMessage,
                onCompleted: (_) =>
                    context.read<VerificationEmailCubit>().onSubmited(),
                onChanged: (code) =>
                    context.read<VerificationEmailCubit>().codeChanged(code),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t receive code?',
                    style: textStyle.h4.copyWith(
                      color: TextColor.grey,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: CinemaxTextButton(
                      label: 'Resend',
                      onPressed: state.disableResendButton
                          ? null
                          : () => context
                              .read<VerificationEmailCubit>()
                              .resetCode(),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
