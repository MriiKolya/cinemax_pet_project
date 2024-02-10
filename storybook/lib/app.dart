import 'package:client/screens/auth/log_in/log_in_screen.dart';
import 'package:client/screens/auth/sign_up/sing_up_screen.dart';
import 'package:client/screens/auth/welcome/welcome_screen.dart';
import 'package:client/screens/splash/splash_screen.dart';
import 'package:client/screens/tab_pages/tab_page.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:storybook/cinemax_storybook.dart';
import 'package:storybook/pages/component_page.dart';
import 'package:storybook/pages/nab_bar_page.dart';

import 'package:storybook_flutter/storybook_flutter.dart';

class StoryBookApp extends StatelessWidget {
  const StoryBookApp({super.key});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) {
          return Provider.value(
            value: constraints.maxWidth > 600
                ? EffectiveLayout.expanded
                : EffectiveLayout.compact,
            child: CinemaxStorybook(
              stories: <Story>[
                Story(
                  name: 'Splash',
                  builder: (context) => const SplashScreen(),
                ),
                Story(
                  name: 'Welcome',
                  builder: (context) => const WelcomeScreen(),
                ),
                Story(
                  name: 'SignUp',
                  builder: (context) => const SignUpScreen(),
                ),
                Story(
                  name: 'Login',
                  builder: (context) => const LoginScreen(),
                ),
                Story(
                  name: 'NabBar',
                  builder: (context) => const NavBar(),
                ),
                Story(
                  name: 'Component/InputText',
                  builder: (context) => const ComponentPage(),
                ),
              ],
            ),
          );
        },
      );
}
