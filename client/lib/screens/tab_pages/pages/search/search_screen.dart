import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.textStyle;
    return Scaffold(
      body: Center(
        child: Text(
          'SearchScreen',
          style: style.h1,
        ),
      ),
    );
  }
}
