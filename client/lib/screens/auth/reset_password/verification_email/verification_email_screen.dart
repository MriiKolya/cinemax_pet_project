import 'package:client/features/verification_email/verification_email.dart';
import 'package:client/screens/auth/reset_password/verification_email/widget/verification_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/icon/cinemax_icon.dart';

class VerificationEmailScreen extends StatelessWidget {
  const VerificationEmailScreen({
    super.key,
    required this.emailAddress,
  });
  final String emailAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CinemaxAppBar(
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
          child: Column(
            children: [
              VerificationTitle(emailAddress: emailAddress),
              const Expanded(child: VerificationEmailForm()),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
