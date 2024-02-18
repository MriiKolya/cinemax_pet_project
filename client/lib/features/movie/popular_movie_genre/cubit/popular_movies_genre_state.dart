part of 'popular_movies_genre_cubit.dart';

@freezed
class PopularMoviesGenreState with _$PopularMoviesGenreState {
  const factory PopularMoviesGenreState({
    required ListMovieEntity listPopularGenreMovie,
    @Default(false) bool loading,
    Failure? failure,
  }) = _PopularMoviesGenreState;
}
