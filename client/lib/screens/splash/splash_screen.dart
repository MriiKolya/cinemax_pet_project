import 'package:client/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/logo/cinemax_logo.dart';
import 'package:ui_kit/theme/text_style.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        context.go(AppRoutes.signUp);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final style = context.logoStyle;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CinemaxLogo(),
            Text(
              'CINEMAX',
              style: TextStyles.h1(fontWeightStyle: FontWeightStyle.semibold)
                  .copyWith(
                color: style.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
