import 'package:flutter/material.dart';
import 'package:ui_kit/component_style/button_style/filled_button_style.dart';
import 'package:ui_kit/component_style/button_style/outlined_button_style.dart';
import 'package:ui_kit/component_style/button_style/text_button_style.dart';

extension ThemeContextExtention on BuildContext {
  FilledButtonStyle get filledButtonStyle =>
      Theme.of(this).extension<FilledButtonStyle>()!;
  TextButtonStyle get textButtonStyle =>
      Theme.of(this).extension<TextButtonStyle>()!;
  OutlinedButtonStyle get outlinedButtonStyle =>
      Theme.of(this).extension<OutlinedButtonStyle>()!;
}
