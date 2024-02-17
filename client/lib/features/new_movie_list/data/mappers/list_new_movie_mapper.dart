import 'package:client/features/new_movie_list/data/dtos/list_new_movie/list_new_movie_dto.dart';
import 'package:client/features/new_movie_list/data/entity/list_new_movie.dart';
import 'package:client/features/new_movie_list/data/mappers/new_movie_mapper.dart';

extension ListNewMovieMapper on ListNewMovieDTO {
  ListNewMovieEntity toDomain() =>
      ListNewMovieEntity(movies: movies?.map((e) => e.toDomain()).toList());
}
