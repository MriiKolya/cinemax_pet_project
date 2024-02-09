import 'package:client/core/extension/font_weight_extension.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/check_box/check_box.dart';
import 'package:ui_kit/component/input_field/input_field.dart';
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
        const InputField(
          labelText: 'Full Name',
        ),
        const InputField(
          labelText: 'Email Address',
        ),
        const InputField(
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
