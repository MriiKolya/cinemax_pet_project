import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class CheckboxStyle extends ThemeExtension<CheckboxStyle> {
  final double splashRadius;
  final double borderRadius;
  final double borderWith;
  final Color activeColor;
  final Color checkColor;
  final Color borderColor;

  CheckboxStyle({
    this.splashRadius = 0,
    this.borderRadius = 6,
    this.borderWith = 1,
    required this.activeColor,
    required this.checkColor,
    required this.borderColor,
  });

  factory CheckboxStyle.dark() => CheckboxStyle(
        activeColor: PrimaryColor.light,
        checkColor: PrimaryColor.blueAccent,
        borderColor: PrimaryColor.blueAccent,
      );

  factory CheckboxStyle.light() => CheckboxStyle(
        activeColor: PrimaryColor.dark,
        checkColor: PrimaryColor.blueAccent,
        borderColor: PrimaryColor.blueAccent,
      );

  @override
  CheckboxStyle copyWith({
    double? splashRadius,
    double? borderRadius,
    double? borderWith,
    Color? activeColor,
    Color? checkColor,
    Color? borderColor,
  }) =>
      CheckboxStyle(
        splashRadius: splashRadius ?? this.splashRadius,
        borderRadius: borderRadius ?? this.borderRadius,
        borderWith: borderWith ?? this.borderWith,
        activeColor: activeColor ?? this.activeColor,
        checkColor: checkColor ?? this.checkColor,
        borderColor: borderColor ?? this.borderColor,
      );

  @override
  CheckboxStyle lerp(ThemeExtension<CheckboxStyle>? other, double t) {
    if (other is! CheckboxStyle) {
      return this;
    }

    return CheckboxStyle(
      splashRadius: lerpDouble(splashRadius, other.splashRadius, t)!,
      borderRadius: lerpDouble(borderRadius, other.borderRadius, t)!,
      borderWith: lerpDouble(borderWith, other.borderWith, t)!,
      activeColor: Color.lerp(activeColor, other.activeColor, t)!,
      checkColor: Color.lerp(checkColor, other.checkColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
    );
  }
}
