import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';
import 'package:ui_kit/theme/typography.dart';

class MessageLogin extends StatelessWidget {
  const MessageLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle;
    return RichText(
        text: TextSpan(
            style: textStyle.h4.copyWith(
                fontWeight: FontWeightStyle.regular.fontWeight,
                color: TextColor.grey),
            children: [
          const TextSpan(text: 'I already have an account?'),
          const TextSpan(text: ' '),
          TextSpan(
            text: 'Login',
            style: textStyle.h4.copyWith(
                fontWeight: FontWeightStyle.semiBold.fontWeight,
                color: PrimaryColor.blueAccent),
          ),
        ]));
  }
}
