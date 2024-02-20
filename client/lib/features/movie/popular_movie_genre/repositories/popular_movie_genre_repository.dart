// ignore_for_file: inference_failure_on_function_invocation

import 'package:client/core/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/list_movie_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class IPopularMovieGenreRepository {
  Future<Either<Failure, ListMovieEntity>> getPopularMovieGenre({
    required GenreEntity genre,
  });
}

class PopularMovieGenreRepository implements IPopularMovieGenreRepository {
  final Dio _dio;

  PopularMovieGenreRepository({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<Either<Failure, ListMovieEntity>> getPopularMovieGenre({
    required GenreEntity genre,
  }) async {
    try {
      const url = '${MovieQuery.baseUrl}${MovieQuery.querypopular}';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic>) {
        try {
          final popularMoviesGenre = ListMovieDTO.fromJson(responseData);
          final listEntity = popularMoviesGenre.toDomain();

          //index 0 is AllGenre
          if (genre.id != 0) {
            listEntity.movies?.removeWhere(
              (movie) =>
                  movie.genres?.every((movieGenre) => movieGenre != genre.id) ??
                  false,
            );
          }
          return right(listEntity);
        } catch (e) {
          // Обработка ошибок, если не удалось преобразовать данные
          return left(const Failure.parseError());
        }
      } else {
        return left(const Failure.parseError());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
