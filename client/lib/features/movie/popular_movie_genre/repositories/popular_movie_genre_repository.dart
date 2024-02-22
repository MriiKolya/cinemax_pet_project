// ignore_for_file: inference_failure_on_function_invocation

import 'dart:math';

import 'package:client/core/api_config.dart';
import 'package:client/core/error/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/data/entity/movie.dart';
import 'package:client/features/movie/data/mappers/list_movie_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class IPopularMovieGenreRepository {
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
      final listMoviesEntity = ListMovieEntity.empty();
      var page = 0;

      while (listMoviesEntity.movies.length < 10) {
        page++;
        final url =
            '${MovieQuery.baseUrl}${MovieQuery.queryPopular}?page=$page';
        final response = await _dio.get(url,
            queryParameters: MovieQuery.queryParametersBase);

        if (response.data is Map<String, dynamic>) {
          final popularMoviesGenre =
              ListMovieDTO.fromJson(response.data as Map<String, dynamic>);
          final listEntity = popularMoviesGenre.toDomain();

          List<MovieEntity> filteredMovies;
          if (genre.id == 0) {
            // Если genre.id равен 0, добавляем все фильмы без фильтрации по жанру
            filteredMovies = listEntity.movies;
          } else {
            // Фильтруем фильмы по жанру
            filteredMovies = listEntity.movies
                .where((movie) =>
                    movie.genres != null && movie.genres!.contains(genre.id))
                .toList();
          }

          final uniqueMovies = filteredMovies.toSet().toList().sublist(0,
              min(20 - listMoviesEntity.movies.length, filteredMovies.length));

          listMoviesEntity.movies.addAll(uniqueMovies);
        } else {
          return left(const Failure.parseError());
        }
      }

      if (listMoviesEntity.movies.length < 20) {
        return left(const Failure.parseError());
      }

      return right(listMoviesEntity);
    } catch (e) {
      debugPrint(e.toString());
      return left(const Failure.serverError());
    }
  }
}
