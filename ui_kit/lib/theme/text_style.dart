import 'package:flutter/material.dart';

enum FontWeightStyle { semibold, regular, medium }

class TextStyles {
  static const String _fontFamily = 'Montserrat';

  static FontWeight _getFontWeight(FontWeightStyle? fontWeightStyle) {
    if (fontWeightStyle == FontWeightStyle.semibold) {
      return FontWeight.w600;
    } else if (fontWeightStyle == FontWeightStyle.medium) {
      return FontWeight.w500;
    } else {
      return FontWeight.w400;
    }
  }

  static TextStyle h1({FontWeightStyle? fontWeightStyle}) => TextStyle(
        fontFamily: _fontFamily,
        fontWeight: _getFontWeight(fontWeightStyle),
        package: 'ui_kit',
        fontSize: 28,
      );

  static TextStyle h2({FontWeightStyle? fontWeightStyle}) => TextStyle(
        fontFamily: _fontFamily,
        fontWeight: _getFontWeight(fontWeightStyle),
        package: 'ui_kit',
        fontSize: 24,
      );

  static TextStyle h3({FontWeightStyle? fontWeightStyle}) => TextStyle(
        fontFamily: _fontFamily,
        fontWeight: _getFontWeight(fontWeightStyle),
        package: 'ui_kit',
        fontSize: 18,
      );

  static TextStyle h4({FontWeightStyle? fontWeightStyle}) => TextStyle(
        fontFamily: _fontFamily,
        fontWeight: _getFontWeight(fontWeightStyle),
        package: 'ui_kit',
        fontSize: 16,
      );
  static TextStyle h5({FontWeightStyle? fontWeightStyle}) => TextStyle(
        fontFamily: _fontFamily,
        fontWeight: _getFontWeight(fontWeightStyle),
        package: 'ui_kit',
        fontSize: 14,
      );
  static TextStyle h6({FontWeightStyle? fontWeightStyle}) => TextStyle(
        fontFamily: _fontFamily,
        fontWeight: _getFontWeight(fontWeightStyle),
        package: 'ui_kit',
        fontSize: 12,
      );
  static TextStyle h7({FontWeightStyle? fontWeightStyle}) => TextStyle(
        fontFamily: _fontFamily,
        fontWeight: _getFontWeight(fontWeightStyle),
        package: 'ui_kit',
        fontSize: 10,
      );
}
