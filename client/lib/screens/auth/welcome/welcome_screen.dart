import 'package:client/config/router/app_router_name.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/screens/auth/welcome/widgets/message_login.dart';
import 'package:client/screens/auth/welcome/widgets/or_sign_up_with.dart';
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
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) => Padding(
            padding:
                EdgeInsets.symmetric(horizontal: constraints.maxWidth / 20),
            child: Column(
              children: [
                const Spacer(),
                const CinemaxLogo(),
                ListTile(
                  title: Text(
                    'CINEMAX',
                    textAlign: TextAlign.center,
                    style: style.h2.copyWith(
                        fontWeight: FontWeightStyle.semiBold.fontWeight,
                        color: TextColor.white),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth / 10),
                    child: Text(
                      'Enter your registered Phone Number to Sign Up',
                      textAlign: TextAlign.center,
                      style: style.h5.copyWith(
                          fontWeight: FontWeightStyle.semiBold.fontWeight,
                          overflow: TextOverflow.clip),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth / 20),
                  child: CinemaxFilledButton(
                    label: 'Sign Up',
                    onPressed: () => context.goNamed(AppRouterName.singUpName),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: MessageLogin(),
                ),
                SizedBox(
                  height: constraints.maxHeight / 4,
                  width: double.maxFinite,
                  child: const OrSignUpWith(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
