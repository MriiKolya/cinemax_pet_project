// ignore_for_file: inference_failure_on_function_invocation

import 'package:client/core/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/mappers/movie_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class IMovieRecommendationRepository {
  Future<Either<Failure, ListMovieEntity>> getMovieRecommendation({
    required int idMovie,
  });
}

class MovieRecommendationRepository implements IMovieRecommendationRepository {
  final Dio _dio;

  MovieRecommendationRepository({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<Either<Failure, ListMovieEntity>> getMovieRecommendation({
    required int idMovie,
  }) async {
    try {
      final dtos = <MovieDTO>[];
      final url =
          '${MovieQuery.baseUrl}$idMovie/${MovieQuery.queryRecommendations}';
      final response =
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic> &&
          responseData.containsKey('results')) {
        final results = responseData['results'] as List<dynamic>;

        for (final data in results) {
          final movieDto = MovieDTO.fromJson(data as Map<String, dynamic>);
          dtos.add(movieDto);
        }
      } else {
        return left(const Failure.serverError());
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
