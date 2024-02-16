import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/app_bar/avatar_user.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.textStyle;
    final user = DependencyProvider.get<AuthBloc>().state.user;
    return Scaffold(
      appBar: CinemaxAppBar(
        leading: const AvatarUser(
          photoUrl: '',
        ),
        centerTitle: false,
        titleText: 'Hello, ${user.email}',
        subTitle: 'Let’s stream your favorite movie',
      ),
      body: Center(
        child: Text(
          'HomeScreen',
          style: style.h1,
        ),
      ),
    );
  }
}
