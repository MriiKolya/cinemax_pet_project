import 'package:client/core/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/genre_list/data/mappers/genre_mappers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class IGenreRepository {
  Future<Either<Failure, List<GenreEntity>>> getGenreList();
}

class GenreRepository implements IGenreRepository {
  GenreRepository({required Dio dio}) : _dio = dio;
  final Dio _dio;

  @override
  Future<Either<Failure, List<GenreEntity>>> getGenreList() async {
    try {
      final dtos = <GenreDTO>[];
      const url = MovieQuery.genreUrl;
      final response =
          // ignore: inference_failure_on_function_invocation
          await _dio.get(url, queryParameters: MovieQuery.queryParametersBase);
      final responseData = response.data;

      if (responseData is Map<String, dynamic> &&
          responseData.containsKey('genres')) {
        final results = responseData['genres'] as List<dynamic>;

        for (final data in results) {
          dtos.add(GenreDTO.fromJson(data as Map<String, dynamic>));
        }
      } else {
        throw Exception('Unexpected data format: $responseData');
      }
      final genryEntity = dtos.map((dto) => dto.toDomain()).toList();

      return right(genryEntity);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
