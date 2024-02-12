import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    super.key,
    this.title,
    this.titleText,
  });

  final Widget? title;
  final String? titleText;

  @override
  Widget build(BuildContext context) {
    if (titleText != null) {
      return Text(
        titleText!,
        textAlign: TextAlign.center,
        style: context.appBarStyle.titleTextStyle,
      );
      // subtitle: subTitle != null
      //     ? Text(
      //         subTitle!,
      //         style: context.appBarStyle.subTitleTextStyle,
      //       )
      //     : null,
    } else {
      return title ?? const SizedBox.shrink();
    }
  }
}
