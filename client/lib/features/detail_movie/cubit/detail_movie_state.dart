part of 'detail_movie_cubit.dart';

@freezed
class DetailMovieState with _$DetailMovieState {
  factory DetailMovieState({
    required MovieDetailEntity movieDetail,
    @Default(false) bool loading,
    Failure? failure,
  }) = _DetailMovieState;
}
