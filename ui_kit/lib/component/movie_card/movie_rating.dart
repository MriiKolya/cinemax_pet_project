import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({super.key, required this.averageRating});

  final double averageRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Align(
        alignment: Alignment.bottomRight,
        child: IntrinsicWidth(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    CinemaxIcons.star,
                    color: SecondaryColor.orange,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    averageRating.toStringAsFixed(2),
                    style: context.textStyle.h6.copyWith(
                      color: SecondaryColor.orange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
