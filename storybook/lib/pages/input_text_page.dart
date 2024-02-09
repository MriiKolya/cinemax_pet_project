import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/input_text/input_text.dart';

class InputTextPage extends StatelessWidget {
  const InputTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputText(
              labelText: 'Full Name',
              sufficIcon: CinemaxIcons.eyeOff,
              prefixIcon: CinemaxIcons.search,
            ),
          ],
        ),
      ),
    );
  }
}
