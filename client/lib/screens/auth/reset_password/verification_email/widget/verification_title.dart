import 'package:client/core/extension/font_weight_extension.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class VerificationTitle extends StatelessWidget {
  const VerificationTitle({super.key, required this.emailAddress});

  final String emailAddress;

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle;
    return Column(
      children: [
        Text(
          'Verifying Your Account',
          textAlign: TextAlign.center,
          style: textStyle.h2.copyWith(
            fontWeight: FontWeightStyle.medium.fontWeight,
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'We have just sent you 4 digit code via your email',
                style: textStyle.h5.copyWith(
                  color: TextColor.grey,
                  overflow: TextOverflow.clip,
                  fontWeight: FontWeightStyle.medium.fontWeight,
                ),
              ),
              const TextSpan(text: ' '),
              TextSpan(
                text: emailAddress,
                style: textStyle.h5.copyWith(
                  overflow: TextOverflow.clip,
                  fontWeight: FontWeightStyle.medium.fontWeight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
