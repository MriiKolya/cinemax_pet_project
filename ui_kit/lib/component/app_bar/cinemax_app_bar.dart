import 'package:flutter/material.dart';
import 'package:ui_kit/component/icon/cinemax_icon.dart';
import 'package:ui_kit/component_style/app_bar_style/app_bar_style.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class CinemaxAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CinemaxAppBar({
    Key? key,
    this.actionIcon,
    this.leadingIcon,
    this.titleText,
    this.subTitle,
    this.leading,
    this.action,
    this.title,
  }) : super(key: key);

  final CinemaxIcon? actionIcon;
  final CinemaxIcon? leadingIcon;
  final String? titleText;
  final String? subTitle;
  final Widget? leading;
  final Widget? action;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    final style = context.appBarStyle;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: AppBar(
        backgroundColor: style.backgroundColor,
        title: _buildTitle(style),
        leadingWidth: 40,
        toolbarHeight: 40,
        leading: _buildLeadingIcon(),
        actions: _buildActions(),
        automaticallyImplyLeading: false,
      ),
    );
  }

  Widget _buildTitle(AppBarStyle style) {
    if (titleText != null) {
      return Text(
        titleText!,
        textAlign: TextAlign.center,
        style: style.titleTextStyle,
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

  Widget? _buildLeadingIcon() {
    return leadingIcon != null ? leadingIcon! : leading;
  }

  List<Widget>? _buildActions() {
    if (actionIcon != null) {
      return [actionIcon!];
    } else if (action != null) {
      return [action!];
    } else {
      return null;
    }
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 70);
}
