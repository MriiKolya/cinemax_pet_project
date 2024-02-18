import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/features/movie/popular_movie_genre/cubit/popular_movies_genre_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class PopularMovieGenre extends StatelessWidget {
  const PopularMovieGenre({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesGenreCubit, PopularMoviesGenreState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.listPopularGenreMovie.movies!.isNotEmpty) {
          return SizedBox(
            height: 230,
            child: ListView.builder(
              itemCount: state.listPopularGenreMovie.movies?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: PrimaryColor.soft,
                    ),
                    child: SizedBox(
                      width: 135,
                      child: Column(
                        children: [
                          Container(
                            width: 135,
                            height: 170,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                  state.listPopularGenreMovie.movies![index]
                                      .picture
                                      .toString(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              state.listPopularGenreMovie.movies![index].title,
                              style: context.textStyle.h5.copyWith(),
                            ),
                          ),
                          // Text(
                          //   state
                          //       .listPopularGenreMovie.movies![index].genres![0]
                          //       .toString(),
                          //   style: context.textStyle.h5.copyWith(
                          //       color: TextColor.grey,
                          //       overflow: TextOverflow.ellipsis),
                          // )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
