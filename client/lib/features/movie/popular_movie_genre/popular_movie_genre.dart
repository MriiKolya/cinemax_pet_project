import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/features/movie/popular_movie_genre/cubit/popular_movies_genre_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
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
            height: 300,
            child: ListView.builder(
              itemCount: state.listPopularGenreMovie.movies?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: IntrinsicWidth(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: PrimaryColor.soft,
                      ),
                      child: IntrinsicWidth(
                        child: SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                      state.listPopularGenreMovie.movies![index]
                                          .picture
                                          .toString(),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: IntrinsicWidth(
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 10,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                CinemaxIcons.star,
                                                color: SecondaryColor.orange,
                                                size: 16,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                state.listPopularGenreMovie
                                                    .movies![index].voteAverage!
                                                    .toStringAsFixed(2),
                                                style:
                                                    context.textStyle.h6.copyWith(
                                                  color: SecondaryColor.orange,
                                                  fontWeight: FontWeightStyle
                                                      .semiBold.fontWeight,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  state
                                      .listPopularGenreMovie.movies![index].title,
                                  style: context.textStyle.h5.copyWith(
                                    fontWeight:
                                        FontWeightStyle.semiBold.fontWeight,
                                  ),
                                ),
                                subtitle: Text(
                                  state.currentGenre.name,
                                  style: context.textStyle.h5.copyWith(
                                      color: TextColor.grey,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ],
                          ),
                        ),
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
