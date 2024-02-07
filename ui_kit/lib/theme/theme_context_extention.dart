import 'package:flutter/material.dart';
import 'package:ui_kit/component_style/button_style/filled_button_style.dart';
import 'package:ui_kit/component_style/button_style/outlined_button_style.dart';
import 'package:ui_kit/component_style/button_style/text_button_style.dart';
import 'package:ui_kit/component_style/check_box_style/check_box_style.dart';
import 'package:ui_kit/component_style/logo_style/cinemax_logo_style.dart';
import 'package:ui_kit/component_style/switch_style/switch_style.dart';

extension ThemeContextExtention on BuildContext {
  FilledButtonStyle get filledButtonStyle =>
      Theme.of(this).extension<FilledButtonStyle>()!;
  TextButtonStyle get textButtonStyle =>
      Theme.of(this).extension<TextButtonStyle>()!;
  OutlinedButtonStyle get outlinedButtonStyle =>
      Theme.of(this).extension<OutlinedButtonStyle>()!;
  CheckboxStyle get checkBoxStyle => Theme.of(this).extension<CheckboxStyle>()!;
  SwithStyle get switchStyle => Theme.of(this).extension<SwithStyle>()!;
  LogoStyle get logoStyle => Theme.of(this).extension<LogoStyle>()!;
}
