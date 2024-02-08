import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/text_style.dart';

class MessageLogin extends StatelessWidget {
  const MessageLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            style: TextStyles.h4(fontWeightStyle: FontWeightStyle.regular)
                .copyWith(color: TextColor.grey),
            children: [
          const TextSpan(text: 'I already have an account?'),
          const TextSpan(text: ' '),
          TextSpan(
            text: 'Login',
            style: TextStyles.h4(fontWeightStyle: FontWeightStyle.semibold)
                .copyWith(color: PrimaryColor.blueAccent),
          ),
        ]));
  }
}
