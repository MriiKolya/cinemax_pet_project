import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/extension/font_weight_extension.dart';
import 'package:client/features/new_movie_list/cubit/new_movie_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:ui_kit/theme/theme_context_extention.dart';

class NewMovieList extends StatelessWidget {
  const NewMovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewMovieListCubit>(
      create: (_) =>
          DependencyProvider.get<NewMovieListCubit>()..loadNewMovieList(),
      child: BlocBuilder<NewMovieListCubit, NewMovieListState>(
        buildWhen: (oldState, newState) =>
            oldState.listNewMovie != newState.listNewMovie,
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.listNewMovie.movies!.isNotEmpty) {
            return Column(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                      enlargeFactor: 0.1,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      height: 180.0,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      autoPlayInterval: const Duration(seconds: 10),
                    ),
                    itemCount: state.listNewMovie.movies?.length,
                    itemBuilder: (context, index, realIndex) {
                      return SizedBox(
                        width: 300,
                        height: 150,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(25),
                            ),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                state.listNewMovie.movies![index].picture
                                    .toString(),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DecoratedBox(
                                  decoration: const BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: IntrinsicWidth(
                                    child: ListTile(
                                      title: Text(
                                        state.listNewMovie.movies![index].title,
                                        style: context.textStyle.h4.copyWith(
                                            fontWeight: FontWeightStyle
                                                .semiBold.fontWeight),
                                      ),
                                      subtitle: Text(
                                        state.listNewMovie.movies![index]
                                                    .releaseDate !=
                                                null
                                            ? 'On ${DateFormat('MMMM d').format(state.listNewMovie.movies![index].releaseDate!)}'
                                            : 'No release date available',
                                        style: context.textStyle.h6.copyWith(
                                          fontWeight:
                                              FontWeightStyle.medium.fontWeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
