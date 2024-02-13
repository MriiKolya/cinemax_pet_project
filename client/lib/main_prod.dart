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
      apiKey: 'AIzaSyAhTRxvO1pf7WVbC0E2ZEyCyaWObOpAX68',
      appId: '1:182735058765:android:743369296169a5618ee904',
      messagingSenderId: '1:182735058765',
      projectId: 'cinemax--prod',
    ),
  );
  final devConfig = FlavorConfig(
    flavor: Flavor.prod,
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
