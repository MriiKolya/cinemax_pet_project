import 'package:client/features/movie_trailler/data/dtos/movie_trailer_dto.dart';
import 'package:client/features/movie_trailler/data/entity/movie_trailer_entity.dart';

extension MovieTrailerMapper on MovieTrailerDTO {
  MovieTrailerEntity toDomain() => MovieTrailerEntity(
        name: name,
        youtubeKey: youtubeKey,
      );
}
