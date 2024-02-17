import 'package:client/features/new_movie_list/data/entity/new_movie.dart';
import 'package:equatable/equatable.dart';

class ListNewMovieEntity extends Equatable {
  final List<NewMovieEntity>? movies;

  const ListNewMovieEntity({required this.movies});

  @override
  List<Object?> get props => [movies];
}
