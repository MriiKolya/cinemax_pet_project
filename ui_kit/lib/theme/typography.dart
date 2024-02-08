import 'package:flutter/material.dart';

enum FontWeightStyle {
  regular,
  medium,
  semiBold,
}

class CinemaxTypography {
  static const String _fontFamily = 'Montserrat';

  static TextStyle h1() => const TextStyle(
        fontFamily: _fontFamily,
        package: 'ui_kit',
        overflow: TextOverflow.ellipsis,
        fontSize: 28,
      );

  static TextStyle h2() => const TextStyle(
        fontFamily: _fontFamily,
        package: 'ui_kit',
        overflow: TextOverflow.ellipsis,
        fontSize: 24,
      );

  static TextStyle h3() => const TextStyle(
        fontFamily: _fontFamily,
        package: 'ui_kit',
        overflow: TextOverflow.ellipsis,
        fontSize: 18,
      );

  static TextStyle h4() => const TextStyle(
        fontFamily: _fontFamily,
        package: 'ui_kit',
        overflow: TextOverflow.ellipsis,
        fontSize: 16,
      );
  static TextStyle h5() => const TextStyle(
        fontFamily: _fontFamily,
        package: 'ui_kit',
        overflow: TextOverflow.ellipsis,
        fontSize: 14,
      );
  static TextStyle h6() => const TextStyle(
        fontFamily: _fontFamily,
        package: 'ui_kit',
        overflow: TextOverflow.ellipsis,
        fontSize: 12,
      );
  static TextStyle h7() => const TextStyle(
        fontFamily: _fontFamily,
        package: 'ui_kit',
        overflow: TextOverflow.ellipsis,
        fontSize: 10,
      );
}

extension FontWeightExtension on FontWeightStyle {
  FontWeight get fontWeight {
    switch (this) {
      case FontWeightStyle.regular:
        return FontWeight.w400;
      case FontWeightStyle.medium:
        return FontWeight.w500;
      case FontWeightStyle.semiBold:
        return FontWeight.w600;

      default:
        return FontWeight.normal;
    }
  }
}
