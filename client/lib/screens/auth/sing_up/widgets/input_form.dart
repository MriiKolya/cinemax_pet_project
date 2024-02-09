import 'package:flutter/material.dart';
import 'package:ui_kit/component/check_box/check_box.dart';
import 'package:ui_kit/component/input_text/input_text.dart';
import 'package:ui_kit/component_style/text_style/text_style.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class InputFormSignUp extends StatefulWidget {
  const InputFormSignUp({super.key});

  @override
  State<InputFormSignUp> createState() => _InputFormSignUpState();
}

class _InputFormSignUpState extends State<InputFormSignUp> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const InputText(
          labelText: 'Full Name',
        ),
        const InputText(
          labelText: 'Email Address',
        ),
        const InputText(
          labelText: 'Password',
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CinemaxCheckBox(
              boxShape: BoxShape.rectangle,
              value: value,
              onChanged: (p0) {
                setState(() {
                  value = !value;
                });
              },
            ),
            const SizedBox(width: 5),
            Flexible(
              child: Text(
                'I agree to the Terms and Services and Privacy Policy',
                style: context.textStyle.h4.copyWith(
                    fontWeight: FontWeightStyle.medium.fontWeight,
                    color: TextColor.grey,
                    overflow: TextOverflow.clip),
              ),
            )
          ],
        ),
      ],
    );
  }
}
