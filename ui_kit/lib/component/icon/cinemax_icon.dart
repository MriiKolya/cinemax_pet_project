import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class CinemaxIcon extends StatelessWidget {
  const CinemaxIcon({
    super.key,
    required this.icon,
    this.onTap,
  });

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final style = context.iconStyle;
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: style.backgroundColor,
        borderRadius: style.borderRadius,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(
          icon,
          color: style.iconColor,
          size: 24,
        ),
      ),
    );
  }
}
