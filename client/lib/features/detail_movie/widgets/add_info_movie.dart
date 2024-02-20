import 'package:client/core/extension/font_weight_extension.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class AddInfoMovie extends StatelessWidget {
  const AddInfoMovie(
      {super.key,
      required this.releaseDate,
      required this.runtime,
      required this.genre});

  final String releaseDate;
  final String runtime;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Icon(Icons.calendar_month, color: TextColor.grey),
            const SizedBox(width: 5),
            Text(
              releaseDate,
              style: context.textStyle.h4.copyWith(
                color: TextColor.grey,
                fontWeight: FontWeightStyle.medium.fontWeight,
              ),
            )
          ],
        ),
        Text(
          '|',
          style: context.textStyle.h4.copyWith(
            color: TextColor.grey,
            fontWeight: FontWeightStyle.medium.fontWeight,
          ),
        ),
        Row(
          children: [
            Icon(CinemaxIcons.clock, color: TextColor.grey),
            const SizedBox(width: 5),
            Text(
              '$runtime Minutes',
              style: context.textStyle.h4.copyWith(
                color: TextColor.grey,
                fontWeight: FontWeightStyle.medium.fontWeight,
              ),
            )
          ],
        ),
        Text(
          '|',
          style: context.textStyle.h4.copyWith(
            color: TextColor.grey,
            fontWeight: FontWeightStyle.medium.fontWeight,
          ),
        ),
        Row(
          children: [
            Icon(CinemaxIcons.film, color: TextColor.grey),
            const SizedBox(width: 5),
            Text(
              genre,
              style: context.textStyle.h4.copyWith(
                color: TextColor.grey,
                fontWeight: FontWeightStyle.medium.fontWeight,
              ),
            )
          ],
        )
      ],
    );
  }
}
