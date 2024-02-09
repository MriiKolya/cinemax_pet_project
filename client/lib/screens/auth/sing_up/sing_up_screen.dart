import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/icon/cinemax_icon.dart';
import 'package:ui_kit/component/check_box/check_box.dart';
import 'package:ui_kit/component/input_text/input_text.dart';
import 'package:ui_kit/component_style/text_style/text_style.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle;
    return Scaffold(
      appBar: CinemaxAppBar(
        titleText: 'Sign Up',
        leadingIcon: CinemaxIcon(
          icon: CinemaxIcons.arrowBack,
          onTap: () => context.pop(),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Let’s get started',
                style: textStyle.h2.copyWith(
                    color: TextColor.white,
                    fontWeight: FontWeightStyle.semiBold.fontWeight),
              ),
              Text(
                'The latest movies and series are here',
                style: textStyle.h6.copyWith(
                  color: TextColor.whiteGrey,
                  fontWeight: FontWeightStyle.medium.fontWeight,
                ),
              ),
              const InputText(
                labelText: 'Full Name',
              ),
              const InputText(
                labelText: 'Email Address',
              ),
              const InputText(
                labelText: 'Password',
              ),
              const CinemaxCheckBox(
                boxShape: BoxShape.rectangle,
                value: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
