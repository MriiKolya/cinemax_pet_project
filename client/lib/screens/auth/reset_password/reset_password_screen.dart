import 'package:client/features/reset_password_form/reset_password_form.dart';
import 'package:client/screens/auth/widgets/title_sing_up.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/icon/cinemax_icon.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CinemaxAppBar(
          leadingIcon: CinemaxIcon(
        icon: CinemaxIcons.arrowBack,
        onTap: () => context.pop(),
      )),
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: constraints.maxHeight / 20,
              child: const TitleForScreen(
                titleText: 'Reset Password',
                subTitleText: 'Recover your account password',
              ),
            ),
            Positioned(
              top: constraints.maxHeight / 5,
              child: SizedBox(
                width: constraints.maxWidth / 1.2,
                height: constraints.maxHeight / 1.5,
                child: const ResetPasswordForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
