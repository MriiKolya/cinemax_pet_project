import 'package:client/features/sign_up_form/sign_up_form.dart';
import 'package:client/screens/auth/widgets/title_sing_up.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';

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
        builder: (context, constraints) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth / 15,
          ),
          child: const Column(
            children: [
              SizedBox(height: 30),
              TitleForScreen(
                titleText: 'Let’s get started',
                subTitleText: 'The latest movies and series are here',
              ),
              Expanded(child: SingUpForm()),
            ],
          ),
        ),
      ),
    );
  }
}
