import 'package:client/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/dark_theme.dart';
// import 'package:ui_kit/theme/light_theme.dart';

void main() {
  runApp(const Cinemax());
}

class Cinemax extends StatelessWidget {
  const Cinemax({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: darkTheme,
      darkTheme: darkTheme,
      routerConfig: AppRoutes.router,
    );
  }
}
