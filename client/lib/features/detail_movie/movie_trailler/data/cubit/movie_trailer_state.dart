part of 'movie_trailer_cubit.dart';

@freezed
class MovieTrailerState with _$MovieTrailerState {
  MovieTrailerState._();

  factory MovieTrailerState({
    required MovieTrailerEntity movieTrailer,
    @Default(false) bool loading,
    Failure? failure,
  }) = _MovieTrailerState;
}
