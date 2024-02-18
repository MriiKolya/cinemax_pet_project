import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:client/features/genre_list/genre_list.dart';
import 'package:client/features/movie/new_movie_list/new_movie_list.dart';
import 'package:client/features/movie/popular_movie_genre/popular_movie_genre.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/avatar/avatar.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35),
            const NewMovieList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Text(
                      'Genre Movie',
                      style: context.textStyle.h4.copyWith(
                        fontWeight: FontWeightStyle.semiBold.fontWeight,
                      ),
                    ),
                  ),
                  const GenreList(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Text(
                      'Most Popular in Genre',
                      style: context.textStyle.h4.copyWith(
                        fontWeight: FontWeightStyle.semiBold.fontWeight,
                      ),
                    ),
                  ),
                  const PopularMovieGenre()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
