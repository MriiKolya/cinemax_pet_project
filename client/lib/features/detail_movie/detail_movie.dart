import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/detail_movie/cubit/detail_movie_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/assets/images/images_assets.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/icon/cinemax_icon.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class DetailMovieScreen extends StatelessWidget {
  const DetailMovieScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailMovieCubit>(
      create: (context) => DependencyProvider.get<DetailMovieCubit>()
        ..loadDetailMovie(idMovie: id),
      child: BlocBuilder<DetailMovieCubit, DetailMovieState>(
        builder: (context, state) {
          if (state.loading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              Opacity(
                opacity: 0.2,
                child: CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  imageUrl: state.movieDetail.posterPicture,
                ),
              ),
              Scaffold(
                backgroundColor: Colors.transparent,
                appBar: CinemaxAppBar(
                  backgroundColor: Colors.transparent,
                  leading: CinemaxIcon(
                    icon: CinemaxIcons.arrowBack,
                    onTap: () => context.pop(),
                  ),
                  actionIcon: CinemaxIcon(
                    icon: CinemaxIcons.heart,
                    iconColor: SecondaryColor.red,
                    onTap: () => context.pop(),
                  ),
                  titleText: state.movieDetail.title,
                ),
                body: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 20,
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                state.movieDetail.posterPicture),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
