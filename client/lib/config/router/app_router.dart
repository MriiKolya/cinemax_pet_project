import 'package:client/config/router/app_router_name.dart';
import 'package:client/screens/auth/log_in/log_in_screen.dart';
import 'package:client/screens/auth/sing_up/sing_up_screen.dart';
import 'package:client/screens/auth/welcome/welcome_screen.dart';
import 'package:client/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final rootNavigationKey = GlobalKey<NavigatorState>();
  static final homeNavigationKey = GlobalKey<NavigatorState>();
  static final tab1 = GlobalKey<NavigatorState>();
  static final tab2 = GlobalKey<NavigatorState>();

  static const String _splashPath = '/splash';

  static const String _welcomePath = '/welcome';

  static const String _logInPath = 'logIn';

  static const String _singUpPath = 'singUp';

  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigationKey,
    initialLocation: AppRoutes._splashPath,
    routes: [
      GoRoute(
        path: AppRoutes._splashPath,
        name: AppRouterName.splashName,
        pageBuilder: (_, state) => const CupertinoPage<void>(
          child: SplashScreen(),
        ),
      ),
      GoRoute(
          path: AppRoutes._welcomePath,
          name: AppRouterName.welcomeName,
          pageBuilder: (_, state) => const CupertinoPage<void>(
                child: WelcomeScreen(),
              ),
          routes: [
            GoRoute(
              path: AppRoutes._logInPath,
              name: AppRouterName.logInName,
              pageBuilder: (_, state) => const CupertinoPage<void>(
                child: LoginScreen(),
              ),
            ),
            GoRoute(
              path: AppRoutes._singUpPath,
              name: AppRouterName.singUpName,
              pageBuilder: (_, state) => const CupertinoPage<void>(
                child: SignUpScreen(),
              ),
            ),
          ]),
    ],
  );
}
