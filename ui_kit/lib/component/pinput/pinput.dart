import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class CinemaxPinput extends StatelessWidget {
  const CinemaxPinput({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.pinputStyle;
    return Pinput(
      submittedPinTheme: style.submittedPinTheme,
      focusedPinTheme: style.focusedPinTheme,
      defaultPinTheme: style.defaultPinTheme,
      errorPinTheme: style.errorPinTheme,
    );
  }
}
