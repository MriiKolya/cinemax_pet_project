part of 'genre_list_cubit.dart';

@freezed
class GenreListState with _$GenreListState {
  const factory GenreListState({
    required List<GenreEntity> listGenre,
    @Default(false) bool loading,
    Failure? failure,
  }) = _GenreListState;
}
