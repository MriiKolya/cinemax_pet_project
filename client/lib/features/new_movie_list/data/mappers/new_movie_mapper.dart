import 'package:client/core/api_config.dart';
import 'package:client/features/new_movie_list/data/dtos/movie_card/new_movie_card_dto.dart';
import 'package:client/features/new_movie_list/data/entity/new_movie_card.dart';

extension NewMovieMapper on MovieCardDTO {
  NewMovieCardEntity toDomain() => NewMovieCardEntity(
        id: id,
        title: title,
        originalTitle: originalTitle,
        description: description,
        popularity: popularity,
        picture: '${MovieQuery.image}$backdropPath',
        releaseDate: DateTime.parse(releaseDate),
        voteAverage: voteAverage,
      );
}
