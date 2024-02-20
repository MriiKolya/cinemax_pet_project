import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/movie_trailler/cubit/movie_trailer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieTrailler extends StatefulWidget {
  const MovieTrailler({
    super.key,
    required this.movieId,
  });

  final int movieId;

  @override
  MovieTraillerState createState() => MovieTraillerState();
}

class MovieTraillerState extends State<MovieTrailler> {
  late YoutubePlayerController _controller;

  bool _isPlayerReady = false;

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {});
    }
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieTrailerCubit>(
      create: (context) => DependencyProvider.get<MovieTrailerCubit>()
        ..loadMovieTrailer(movieId: widget.movieId),
      child: BlocBuilder<MovieTrailerCubit, MovieTrailerState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return YoutubePlayerBuilder(
            onExitFullScreen: () {
              SystemChrome.setPreferredOrientations(DeviceOrientation.values);
            },
            player: YoutubePlayer(
              controller: _controller = YoutubePlayerController(
                initialVideoId: state.movieTrailer.youtubeKey,
                flags: YoutubePlayerFlags(
                  autoPlay: _isPlayerReady,
                ),
              ),
              showVideoProgressIndicator: true,
              progressIndicatorColor: PrimaryColor.blueAccent,
              onReady: () {
                _isPlayerReady = true;
              },
            ),
            builder: (context, player) => ListView(
              children: [
                player,
              ],
            ),
          );
        },
      ),
    );
  }
}
