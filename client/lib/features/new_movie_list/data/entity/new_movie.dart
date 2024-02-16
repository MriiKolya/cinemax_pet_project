import 'package:client/features/new_movie_list/data/entity/new_movie_card.dart';
import 'package:equatable/equatable.dart';

class ListNewMovieEntity extends Equatable {
  final List<NewMovieCardEntity>? movies;

  const ListNewMovieEntity({required this.movies});

  @override
  List<Object?> get props => [movies];
}
