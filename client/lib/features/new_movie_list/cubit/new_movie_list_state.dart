part of 'new_movie_list_cubit.dart';

@freezed
class NewMovieListState with _$NewMovieListState {
  const factory NewMovieListState({
    required ListNewMovieEntity listNewMovie,
    @Default(false) bool loading,
    String? error,
  }) = _NewMovieListState;
}
