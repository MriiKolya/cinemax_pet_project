import 'package:client/config/router/app_router_name.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/screens/auth/welcome/widgets/message_login.dart';
import 'package:client/screens/auth/welcome/widgets/social_icon.dart';
import 'package:client/screens/auth/widgets/title_sing_up.dart';
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
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: constraints.maxWidth / 15,
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    const CinemaxLogo(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth / 5),
                      child: const TitleForScreen(
                        titleText: 'CINEMAX',
                        subTitleText:
                            'Enter your registered Phone Number to Sign Up',
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                CinemaxFilledButton(
                  label: 'Sign Up',
                  onPressed: () => context.goNamed(AppRouterName.singUpName),
                ),
                const MessageLogin(),
                const Spacer(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Expanded(child: Divider(color: TextColor.grey)),
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
                          Expanded(child: Divider(color: TextColor.grey)),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SocialIcon(
                            icon: Icons.g_mobiledata,
                            width: 60,
                            height: 60,
                          ),
                          SocialIcon(
                            icon: Icons.apple,
                            width: 60,
                            height: 60,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
