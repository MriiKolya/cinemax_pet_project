import 'package:client/features/movie/data/entity/movie.dart';
import 'package:equatable/equatable.dart';

class ListMovieEntity extends Equatable {
  final List<MovieEntity>? movies;

  const ListMovieEntity({required this.movies});

  @override
  List<Object?> get props => [movies];
}
