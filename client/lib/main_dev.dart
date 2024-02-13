import 'package:client/core/flavor/flavor.dart';
import 'package:client/core/flavor/flavor_banner.dart';
import 'package:client/core/flavor/flavor_config.dart';
import 'package:client/core/router/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/dark_theme.dart';
// import 'package:ui_kit/theme/light_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCWnIln1jE6qtLoB--lTEiad4yGFywqQsk',
      appId: '1:194431657319:android:44a531d346d487865bfbc2',
      messagingSenderId: '1:194431657319',
      projectId: 'cinemax-dev-a8193',
    ),
  );
  final devConfig = FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(),
  );

  runApp(
    FlavorBanner(
      config: devConfig,
      child: const Cinemax(),
    ),
  );
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
