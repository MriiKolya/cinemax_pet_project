import 'package:flutter/material.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/pinput/pinput.dart';

class VerificationEmailForm extends StatelessWidget {
  const VerificationEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        SizedBox(
          height: 80,
          width: 400,
          child: CinemaxPinput(),
        ),
        Spacer(),
        CinemaxFilledButton(label: 'Continue')
      ],
    );
  }
}
