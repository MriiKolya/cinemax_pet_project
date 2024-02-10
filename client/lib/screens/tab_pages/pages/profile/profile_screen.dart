import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.textStyle;
    return Scaffold(
      body: Center(
        child: Text(
          'ProfileScreen',
          style: style.h1,
        ),
      ),
    );
  }
}
