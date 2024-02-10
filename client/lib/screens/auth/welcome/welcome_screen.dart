import 'package:client/config/router/app_router_name.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/screens/auth/welcome/widgets/message_login.dart';
import 'package:client/screens/auth/welcome/widgets/social_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/logo/cinemax_logo.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.textStyle;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: constraints.maxHeight / 15,
              child: SizedBox(
                width: constraints.maxWidth / 2,
                child: Column(
                  children: [
                    const CinemaxLogo(),
                    Text(
                      'CINEMAX',
                      textAlign: TextAlign.center,
                      style: style.h2.copyWith(
                        fontWeight: FontWeightStyle.semiBold.fontWeight,
                        color: TextColor.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Enter your registered Phone Number to Sign Up',
                      textAlign: TextAlign.center,
                      style: style.h5.copyWith(
                        fontWeight: FontWeightStyle.semiBold.fontWeight,
                        overflow: TextOverflow.clip,
                        color: TextColor.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: constraints.maxHeight * 0.4,
              child: SizedBox(
                width: constraints.maxWidth * 0.8,
                child: CinemaxFilledButton(
                  label: 'Sign Up',
                  onPressed: () => context.goNamed(AppRouterName.singUpName),
                ),
              ),
            ),
            Positioned(
              bottom: constraints.maxHeight * 0.2,
              child: Column(
                children: [
                  const MessageLogin(),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: constraints.maxWidth * 0.8,
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(height: 1, color: TextColor.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or Sign up with',
                            style: context.textStyle.h5.copyWith(
                              color: TextColor.grey,
                              fontWeight: FontWeightStyle.regular.fontWeight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(height: 1, color: TextColor.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: constraints.maxHeight * 0.1,
              child: SizedBox(
                width: constraints.maxWidth * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialIcon(
                      icon: Icons.g_mobiledata,
                      width: constraints.maxWidth / 3,
                      height: constraints.maxHeight / 15,
                    ),
                    SocialIcon(
                      icon: Icons.apple,
                      width: constraints.maxWidth / 3,
                      height: constraints.maxHeight / 15,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
