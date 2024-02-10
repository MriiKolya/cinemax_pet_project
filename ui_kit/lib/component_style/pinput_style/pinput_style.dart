import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/typography.dart';

class _Constant {
  static const double borderRadius = 12;
}

class PinputStyle extends ThemeExtension<PinputStyle> {
  final PinTheme submittedPinTheme;
  final PinTheme focusedPinTheme;
  final PinTheme defaultPinTheme;
  final PinTheme errorPinTheme;

  PinputStyle({
    required this.submittedPinTheme,
    required this.focusedPinTheme,
    required this.defaultPinTheme,
    required this.errorPinTheme,
  });

  factory PinputStyle.dark() => PinputStyle(
        submittedPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.white,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
            border: Border.all(
              color: PrimaryColor.blueAccent,
            ),
          ),
        ),
        focusedPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.white,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
            border: Border.all(
              color: PrimaryColor.blueAccent,
            ),
          ),
        ),
        defaultPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.white,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
          ),
        ),
        errorPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: SecondaryColor.red,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: SecondaryColor.red,
            ),
          ),
        ),
      );

  factory PinputStyle.light() => PinputStyle(
        submittedPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.white,
          ),
          decoration: BoxDecoration(
            color: TextColor.darkGrey,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
            border: Border.all(
              color: PrimaryColor.blueAccent,
            ),
          ),
        ),
        focusedPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.black,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
            border: Border.all(
              color: PrimaryColor.blueAccent,
            ),
          ),
        ),
        defaultPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: TextColor.black,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(_Constant.borderRadius),
          ),
        ),
        errorPinTheme: PinTheme(
          textStyle: CinemaxTypography.h1().copyWith(
            fontWeight: FontWeight.w600,
            color: SecondaryColor.red,
          ),
          decoration: BoxDecoration(
            color: PrimaryColor.soft,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: SecondaryColor.red,
            ),
          ),
        ),
      );

  @override
  PinputStyle copyWith({
    PinTheme? submittedPinTheme,
    PinTheme? focusedPinTheme,
    PinTheme? defaultPinTheme,
    PinTheme? errorPinTheme,
  }) {
    return PinputStyle(
      submittedPinTheme: submittedPinTheme ?? this.submittedPinTheme,
      focusedPinTheme: focusedPinTheme ?? this.focusedPinTheme,
      defaultPinTheme: defaultPinTheme ?? this.defaultPinTheme,
      errorPinTheme: errorPinTheme ?? this.errorPinTheme,
    );
  }

  @override
  ThemeExtension<PinputStyle> lerp(
      covariant ThemeExtension<PinputStyle>? other, double t) {
    throw UnimplementedError();
  }
}
