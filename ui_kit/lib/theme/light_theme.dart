import 'package:flutter/material.dart';
import 'package:ui_kit/component_style/filled_button_style.dart';
import 'package:ui_kit/component_style/outlined_button_style.dart';
import 'package:ui_kit/component_style/text_button_style.dart';
import 'package:ui_kit/theme/color_scheme.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: PrimaryColor.light,
  useMaterial3: true,
  extensions: <ThemeExtension<dynamic>>[
    FilledButtonStyle.light(),
    TextButtonStyle.light(),
    OutlinedButtonStyle.light(),
  ],
);
