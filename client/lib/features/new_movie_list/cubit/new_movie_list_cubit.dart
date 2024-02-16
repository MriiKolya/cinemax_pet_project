import 'package:client/features/new_movie_list/data/entity/new_movie.dart';
import 'package:client/features/new_movie_list/data/repositories/new_movie_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_movie_list_state.dart';
part 'new_movie_list_cubit.freezed.dart';

class NewMovieListCubit extends Cubit<NewMovieListState> {
  final NewMovieRepository _repository;
  NewMovieListCubit({required NewMovieRepository repository})
      : _repository = repository,
        super(const NewMovieListState(
          listNewMovie: ListNewMovieEntity(
            movies: [],
          ),
        ));

  Future<void> loadNewMovieList() async {
    emit(state.copyWith(loading: true));
    final listNewMovie = await _repository.getNewMovieList();
    emit(state.copyWith(
      loading: false,
      listNewMovie: listNewMovie,
      error: null,
    ));
  }
}
