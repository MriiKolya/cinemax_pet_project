import 'package:flutter/cupertino.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class CinemaxSwith extends StatelessWidget {
  const CinemaxSwith({
    super.key,
    required this.value,
    this.onChanged,
  });

  final bool value;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    final style = context.switchStyle;
    return CupertinoSwitch(
      thumbColor: style.thumbColor,
      activeColor: style.activeColor,
      trackColor: style.trackColor,
      value: value,
      onChanged: onChanged,
    );
  }
}