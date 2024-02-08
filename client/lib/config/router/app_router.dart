import 'package:client/screens/auth/sign_up/sign_up_screen.dart';
import 'package:client/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final rootNavigationKey = GlobalKey<NavigatorState>();
  static final homeNavigationKey = GlobalKey<NavigatorState>();
  static final tab1 = GlobalKey<NavigatorState>();
  static final tab2 = GlobalKey<NavigatorState>();
  static const String splash = '/splash';
  static const String signUp = '/signUp';

  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigationKey,
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        pageBuilder: (_, state) => const CupertinoPage<void>(
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        pageBuilder: (_, state) => const CupertinoPage<void>(
          child: SignUpScreen(),
        ),
      ),
    ],
  );
}
