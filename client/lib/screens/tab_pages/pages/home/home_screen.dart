import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.textStyle;
    return Scaffold(
      body: Center(
        child: Text(
          'HomeScreen',
          style: style.h1,
        ),
      ),
    );
  }
}
