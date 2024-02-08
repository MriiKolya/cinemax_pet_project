import 'package:client/screens/auth/sign_up/widgets/message_login.dart';
import 'package:client/screens/auth/sign_up/widgets/or_sign_up_with.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/logo/cinemax_logo.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/text_style.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(),
              const CinemaxLogo(),
              ListTile(
                title: Text(
                  'CINEMAX',
                  textAlign: TextAlign.center,
                  style:
                      TextStyles.h1(fontWeightStyle: FontWeightStyle.semibold)
                          .copyWith(color: PrimaryColor.light),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Enter your registered Phone Number to Sign Up',
                    textAlign: TextAlign.center,
                    style:
                        TextStyles.h5(fontWeightStyle: FontWeightStyle.semibold)
                            .copyWith(overflow: TextOverflow.clip),
                  ),
                ),
              ),
              const Spacer(),
              CinemaxFilledButton(
                label: 'Sign Up',
                onPressed: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: MessageLogin(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: OrSignUpWith(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
