part of 'genre_list_cubit.dart';

@freezed
class GenreListState with _$GenreListState {
  const factory GenreListState({
    required List<GenreEntity> listGenre,
    @Default(false) bool loading,
    @Default(GenreEntity(id: 28, name: 'Action')) GenreEntity currentGenre,
    Failure? failure,
  }) = _GenreListState;
}
