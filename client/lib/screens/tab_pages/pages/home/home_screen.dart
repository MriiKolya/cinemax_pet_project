import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:client/features/new_movie_list/presentation/new_movie_list.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/avatar/avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = DependencyProvider.get<AuthBloc>().state.user;
    return Scaffold(
      appBar: CinemaxAppBar(
        leading: Avatar(
          photoUrl: user.photoUrl.toString(),
        ),
        centerTitle: false,
        titleText: 'Hello, ${user.email}',
        subTitle: 'Let’s stream your favorite movie',
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35),
            NewMovieList(),
          ],
        ),
      ),
    );
  }
}
