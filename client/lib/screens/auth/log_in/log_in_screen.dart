import 'package:client/features/login/login_form/login_form.dart';
import 'package:client/screens/auth/widgets/title_sing_up.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/conponent.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CinemaxAppBar(
        titleText: 'Login',
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
          child: const Column(
            children: [
              SizedBox(height: 30),
              TitleForScreen(
                titleText: 'Greetings from Cinemax',
                subTitleText: 'Welcone back! Please enter your details',
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
