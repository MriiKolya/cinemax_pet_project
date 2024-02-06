import 'package:flutter/material.dart';
import 'package:ui_kit/component_style/button_style/filled_button_style.dart';
import 'package:ui_kit/component_style/button_style/outlined_button_style.dart';
import 'package:ui_kit/component_style/button_style/text_button_style.dart';
import 'package:ui_kit/theme/color_scheme.dart';

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: PrimaryColor.dark,
  useMaterial3: true,
  extensions: <ThemeExtension<dynamic>>[
    FilledButtonStyle.dark(),
    TextButtonStyle.dark(),
    OutlinedButtonStyle.dark(),
  ],
);
