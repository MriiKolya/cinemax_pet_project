import 'package:client/screens/auth/log_in/log_in_screen.dart';
import 'package:client/screens/auth/sign_up/sing_up_screen.dart';

import 'package:client/screens/splash/splash_screen.dart';
import 'package:client/screens/tab_pages/pages/home/home_screen.dart';
import 'package:client/screens/tab_pages/pages/search/search_screen.dart';
import 'package:client/screens/tab_pages/tab_page.dart';
import 'package:client/screens/welcome/welcome_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:storybook/router/app_router_name.dart';

class AppRoutes {
  static final rootNavigationKey = GlobalKey<NavigatorState>();
  static final homeNavigationKey = GlobalKey<NavigatorState>();
  static final homeTab = GlobalKey<NavigatorState>();
  static final searchTab = GlobalKey<NavigatorState>();
  static final favoriteTab = GlobalKey<NavigatorState>();
  static final profileTab = GlobalKey<NavigatorState>();

  static const String _splashPath = '/splash';
  static const String _welcomePath = '/welcome';
  static const String _logInPath = 'logIn';
  static const String _singUpPath = 'singUp';
  static const String _homePath = '/home';
  static const String _searchPath = '/search';

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
      StatefulShellRoute.indexedStack(
        builder: (_, state, shell) => TabPage(shell),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                name: AppRouterName.homeName,
                path: AppRoutes._homePath,
                builder: (_, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes._searchPath,
                builder: (_, state) => const SearchScreen(),
              ),
            ],
          ),
        ],
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
