import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:client/features/new_movie_list/presentation/dasboard_new_movie_list.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/app_bar/avatar_user.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = DependencyProvider.get<AuthBloc>().state.user;
    return Scaffold(
      appBar: CinemaxAppBar(
        leading: const AvatarUser(
          photoUrl: 'https://variety.com/wp-content/uploads/2021/04/Avatar.jpg',
        ),
        centerTitle: false,
        titleText: 'Hello, ${user.email}',
        subTitle: 'Let’s stream your favorite movie',
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [NewMovieList()],
        ),
      ),
    );
  }
}
