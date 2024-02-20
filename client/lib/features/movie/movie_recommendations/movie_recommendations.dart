import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/mappers/movie_card_mapper.dart';
import 'package:client/features/movie/movie_recommendations/cubit/movie_recommendation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/movie_card/movie_card.dart';

class MovieRecommendations extends StatelessWidget {
  const MovieRecommendations({super.key, required this.idMovie, this.genre});

  final int idMovie;
  final List<GenreEntity>? genre;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieRecommendationCubit>(
      create: (context) => DependencyProvider.get<MovieRecommendationCubit>()
        ..loadMovieRecommendation(idMovie: idMovie),
      child: BlocBuilder<MovieRecommendationCubit, MovieRecommendationState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.movieReccomendations.movies != null) {
            return SizedBox(
              height: 280,
              child: ListView.builder(
                  itemCount: state.movieReccomendations.movies!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final card = state.movieReccomendations.movies![index]
                        .toCard()
                      ..genre = genre?[0].name;
                    return MovieCard(
                      onTap: () {
                        context.pushNamed(
                          AppRouterName.detailMovieName,
                          extra: state.movieReccomendations.movies?[index].id,
                        );
                      },
                      cardModel: card,
                    );
                  }),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
