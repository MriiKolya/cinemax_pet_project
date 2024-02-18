// ignore_for_file: inference_failure_on_function_invocation

import 'package:client/core/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
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
      final dtos = <MovieDTO>[];
      const url = '${MovieQuery.baseUrl}${MovieQuery.querypopular}';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic> &&
          responseData.containsKey('results')) {
        final results = responseData['results'] as List<dynamic>;

        for (final data in results) {
          final movieDto = MovieDTO.fromJson(data as Map<String, dynamic>);

          if (genre.id != 0) {
            if (movieDto.genres.contains(genre.id)) {
              dtos.add(movieDto);
            }
          } else {
            dtos.add(movieDto);
          }
        }
      } else {
        throw Exception('Unexpected data format: $responseData');
      }

      final movieEntity = dtos.map((dto) => dto.toDomain()).toList();
      final listMovie = ListMovieEntity(movies: movieEntity);
      return right(listMovie);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
