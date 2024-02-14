import 'package:client/core/router/app_router_name.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/logo/cinemax_logo.dart';
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
        context.goNamed(AppRouterName.homeName);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textStyle;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CinemaxLogo(),
            Text('CINEMAX',
                style: textStyle.h1.copyWith(
                  fontWeight: FontWeightStyle.semiBold.fontWeight,
                )),
          ],
        ),
      ),
    );
  }
}
