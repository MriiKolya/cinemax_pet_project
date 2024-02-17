import 'package:client/core/api_config.dart';
import 'package:client/features/new_movie_list/data/dtos/new_movie/new_movie_dto.dart';
import 'package:client/features/new_movie_list/data/entity/new_movie.dart';

extension NewMovieMapper on NewMovieDTO {
  NewMovieEntity toDomain() => NewMovieEntity(
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
