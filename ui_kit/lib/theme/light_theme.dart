import 'package:flutter/material.dart';
import 'package:ui_kit/component_style/button_style/filled_button_style.dart';
import 'package:ui_kit/component_style/button_style/outlined_button_style.dart';
import 'package:ui_kit/component_style/button_style/text_button_style.dart';
import 'package:ui_kit/component_style/check_box_style/check_box_style.dart';
import 'package:ui_kit/component_style/logo_style/cinemax_logo_style.dart';
import 'package:ui_kit/component_style/switch_style/switch_style.dart';
import 'package:ui_kit/theme/color_scheme.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: PrimaryColor.dark,
  scaffoldBackgroundColor: PrimaryColor.light,
  useMaterial3: true,
  extensions: <ThemeExtension<dynamic>>[
    FilledButtonStyle.light(),
    TextButtonStyle.light(),
    OutlinedButtonStyle.light(),
    CheckboxStyle.light(),
    SwithStyle.light(),
    LogoStyle.light(),
  ],
);
