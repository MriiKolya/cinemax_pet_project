import 'package:client/features/movie/data/entity/movie.dart';
import 'package:equatable/equatable.dart';

class ListMovieEntity extends Equatable {
  final int page;
  final List<MovieEntity>? movies;

  const ListMovieEntity({
    required this.movies,
    required this.page,
  });

  factory ListMovieEntity.empty() => const ListMovieEntity(movies: [], page: 1);

  @override
  List<Object?> get props => [movies, page];
}
