import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:client/core/api_config.dart';
import 'package:client/features/new_movie_list/cubit/new_movie_list_cubit.dart';
import 'package:client/features/new_movie_list/data/repositories/new_movie_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewMovieList extends StatelessWidget {
  const NewMovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewMovieListCubit>(
      create: (context) => NewMovieListCubit(
        repository: NewMovieRepository(dio: Dio()),
      )..loadNewMovieList(),
      child: BlocBuilder<NewMovieListCubit, NewMovieListState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.listNewMovie.movies!.isNotEmpty) {
            return Column(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {},
                      enlargeCenterPage: true,
                      height: 150.0,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 10),
                    ),
                    itemCount: state.listNewMovie.movies?.length,
                    itemBuilder: (context, index, realIndex) {
                      return SizedBox(
                        width: 300,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl:
                                '${MovieQuery.image}${state.listNewMovie.movies![index].picture.toString()}',
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
