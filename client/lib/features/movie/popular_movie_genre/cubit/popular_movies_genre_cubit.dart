import 'package:client/core/error/failure.dart';
import 'package:client/features/genre_list/data/entity/genre_entity.dart';
import 'package:client/features/movie/data/entity/list_movie.dart';
import 'package:client/features/movie/popular_movie_genre/repositories/popular_movie_genre.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_genre_state.dart';
part 'popular_movies_genre_cubit.freezed.dart';

class PopularMoviesGenreCubit extends Cubit<PopularMoviesGenreState> {
  final PopularMovieGenreRepository _repository;
  PopularMoviesGenreCubit({required PopularMovieGenreRepository repository})
      : _repository = repository,
        super(
          const PopularMoviesGenreState(
            listPopularGenreMovie: ListMovieEntity(
              movies: [],
            ),
          ),
        );

  Future<void> loadPopularMovieGenre({required GenreEntity genre}) async {
    emit(state.copyWith(loading: true));
    final listPopularMovieGenre =
        await _repository.getPopularMovieGenre(genre: genre);
    final b = listPopularMovieGenre
        .getOrElse(() => const ListMovieEntity(movies: []));
    debugPrint(b.movies?.length.toString());
    listPopularMovieGenre.fold(
        (failure) => emit(
              state.copyWith(
                loading: false,
                listPopularGenreMovie: const ListMovieEntity(movies: []),
                failure: failure,
              ),
            ), (succes) {
      final b = listPopularMovieGenre
          .getOrElse(() => const ListMovieEntity(movies: []));

      emit(
        state.copyWith(
          loading: false,
          listPopularGenreMovie: b,
          failure: null,
        ),
      );
    });
  }

  Future<void> initial() async {
    emit(state.copyWith(loading: true));
    final listPopularMovieGenre = await _repository.getPopularMovieGenre(
        genre: const GenreEntity(id: 28, name: 'Action'));
    final b = listPopularMovieGenre
        .getOrElse(() => const ListMovieEntity(movies: []));
    debugPrint(b.movies?.length.toString());
    listPopularMovieGenre.fold(
      (failure) => emit(
        state.copyWith(
          loading: false,
          listPopularGenreMovie: const ListMovieEntity(movies: []),
          failure: failure,
        ),
      ),
      (succes) => emit(
        state.copyWith(
          loading: false,
          listPopularGenreMovie: listPopularMovieGenre
              .getOrElse(() => const ListMovieEntity(movies: [])),
          failure: null,
        ),
      ),
    );
  }
}
