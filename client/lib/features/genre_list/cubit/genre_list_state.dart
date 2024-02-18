part of 'genre_list_cubit.dart';

@freezed
class GenreListState with _$GenreListState {
  const factory GenreListState({
    @Default([]) List<GenreEntity> listGenre,
    @Default(false) bool loading,
    @Default(GenreEntity(id: 0, name: 'All')) GenreEntity currentGenre,
    Failure? failure,
  }) = _GenreListState;
}
