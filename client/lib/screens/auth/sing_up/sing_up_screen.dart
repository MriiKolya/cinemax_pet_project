import 'package:client/screens/auth/sing_up/widgets/input_form.dart';
import 'package:client/screens/auth/sing_up/widgets/title_sing_up.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';

import 'package:ui_kit/component/icon/cinemax_icon.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CinemaxAppBar(
        titleText: 'Sign Up',
        leadingIcon: CinemaxIcon(
          icon: CinemaxIcons.arrowBack,
          onTap: () => context.pop(),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: constraints.maxHeight / 20,
              child: const TitleSingUp(),
            ),
            Positioned(
              top: constraints.maxHeight / 5,
              child: SizedBox(
                  width: constraints.maxWidth / 1.2,
                  height: constraints.maxHeight / 2,
                  child: const InputFormSignUp()),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: constraints.maxWidth * 0.8,
                height: constraints.maxHeight / 5,
                child: Column(
                  children: [
                    CinemaxFilledButton(
                      label: 'Sign Up',
                      onPressed: () => null,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
