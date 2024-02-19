import 'package:flutter/material.dart';
import 'package:ui_kit/component/movie_card/movie_card.dart';
import 'package:ui_kit/component/movie_card/movie_card_model.dart';

class PopularMovieGenre extends StatelessWidget {
  PopularMovieGenre({super.key});

  final list = [
    MovieCardModel(
        posterPicture:
            'https://kinogo.inc/uploads/posts/2017-03/1490882002-409471279-legenda.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://kinogo.inc/uploads/posts/2017-03/1490882002-409471279-legenda.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://kinogo.inc/uploads/posts/2017-03/1490882002-409471279-legenda.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://kinogo.inc/uploads/posts/2017-03/1490882002-409471279-legenda.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://kinogo.inc/uploads/posts/2017-03/1490882002-409471279-legenda.jpg',
        averageRating: 9.8,
        title: 'Legend'),
    MovieCardModel(
        posterPicture:
            'https://kinogo.inc/uploads/posts/2017-03/1490882002-409471279-legenda.jpg',
        averageRating: 9.8,
        title: 'Legend'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return MovieCard(cardModel: list[index]);
          }),
    );
  }
}
