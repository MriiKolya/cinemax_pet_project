import 'package:client/core/api_config.dart';
import 'package:client/features/movie/data/entity/movie.dart';
import 'package:ui_kit/component/movie_card/movie_card_model.dart';

extension MovieCardMapper on MovieEntity {
  MovieCardModel toCard() => MovieCardModel(
        title: title,
        posterPicture: '${MovieQuery.image}$picture',
        averageRating: voteAverage!,
      );
}