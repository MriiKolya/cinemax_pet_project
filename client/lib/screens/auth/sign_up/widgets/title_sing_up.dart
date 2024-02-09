import 'package:client/core/extension/font_weight_extension.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class TitleSingUp extends StatelessWidget {
  const TitleSingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Let’s get started',
          style: context.textStyle.h2.copyWith(
              color: TextColor.white,
              fontWeight: FontWeightStyle.semiBold.fontWeight),
        ),
        Text(
          'The latest movies and series are here',
          style: context.textStyle.h6.copyWith(
            color: TextColor.whiteGrey,
            fontWeight: FontWeightStyle.medium.fontWeight,
          ),
        )
      ],
    );
  }
}
