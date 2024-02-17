import 'package:client/core/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/new_movie_list/data/dtos/movie_card/new_movie_card_dto.dart';
import 'package:client/features/new_movie_list/data/entity/new_movie.dart';
import 'package:client/features/new_movie_list/data/mappers/new_movie_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class INewMovieRepository {
  Future<Either<Failure, ListNewMovieEntity>> getNewMovieList();
}

class NewMovieRepository implements INewMovieRepository {
  final Dio _dio;
  NewMovieRepository({required Dio dio}) : _dio = dio;

  @override
  Future<Either<Failure, ListNewMovieEntity>> getNewMovieList() async {
    try {
      final dtos = <MovieCardDTO>[];
      const url = '${MovieQuery.baseUrl}${MovieQuery.queryNowPlaying}';
      final response =
          // ignore: inference_failure_on_function_invocation
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic> &&
          responseData.containsKey('results')) {
        final results = responseData['results'] as List<dynamic>;

        for (final data in results) {
          dtos.add(MovieCardDTO.fromJson(data as Map<String, dynamic>));
        }
      } else {
        throw Exception('Unexpected data format: $responseData');
      }
      final movieEntity = dtos.map((dto) => dto.toDomain()).toList();
      final listMovie = ListNewMovieEntity(movies: movieEntity);
      return right(listMovie);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
