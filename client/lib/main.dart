import 'package:flutter/material.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/buttons/cinemax_outlined_button.dart';
import 'package:ui_kit/component/buttons/cinemax_text_button.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';

import 'package:ui_kit/theme/dark_theme.dart';

void main() {
  runApp(const Cinemax());
}

class Cinemax extends StatelessWidget {
  const Cinemax({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      darkTheme: darkTheme,
      home: const TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CinemaxFilledButton(
              label: 'Filled',
              icon: CinemaxIcons.layer,
              onPressed: () {},
            ),
            CinemaxTextButton(
              label: 'Text',
              onPressed: () {},
            ),
            CinemaxOutlinedButton(
              label: 'Outline',
              icon: CinemaxIcons.layer,
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
