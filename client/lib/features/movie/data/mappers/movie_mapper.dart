import 'package:client/core/api/api_config.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/entity/movie.dart';

extension MovieMapper on MovieDTO {
  MovieEntity toDomain() => MovieEntity(
        id: id,
        title: title,
        originalTitle: originalTitle,
        description: description,
        popularity: popularity,
        picture: '${MovieQuery.image}$backdropPath',
        voteAverage: voteAverage,
        genres: genres,
      );
}
