import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class SwithStyle extends ThemeExtension<SwithStyle> {
  final Color thumbColor;
  final Color activeColor;
  final Color trackColor;

  SwithStyle({
    required this.thumbColor,
    required this.activeColor,
    required this.trackColor,
  });

  factory SwithStyle.dark() => SwithStyle(
        thumbColor: PrimaryColor.light,
        activeColor: PrimaryColor.blueAccent,
        trackColor: TextColor.grey,
      );

  factory SwithStyle.light() => SwithStyle(
        thumbColor: PrimaryColor.light,
        activeColor: PrimaryColor.blueAccent,
        trackColor: TextColor.grey,
      );

  @override
  SwithStyle lerp(ThemeExtension<SwithStyle>? other, double t) {
    if (other is! SwithStyle) {
      return this;
    }

    return SwithStyle(
      activeColor: Color.lerp(activeColor, other.activeColor, t)!,
      thumbColor: Color.lerp(thumbColor, other.thumbColor, t)!,
      trackColor: Color.lerp(trackColor, other.trackColor, t)!,
    );
  }

  @override
  SwithStyle copyWith({
    Color? thumbColor,
    Color? activeColor,
    Color? trackColor,
  }) {
    return SwithStyle(
      thumbColor: thumbColor ?? this.thumbColor,
      activeColor: activeColor ?? this.activeColor,
      trackColor: trackColor ?? this.trackColor,
    );
  }
}
