import 'package:equatable/equatable.dart';

class NewMovieCardEntity extends Equatable {
  final int id;
  final String title;
  final String? originalTitle;
  final String? description;
  final double? popularity;
  final String? picture;
  final String? releaseDate;
  final double? voteAverage;

  const NewMovieCardEntity({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.description,
    required this.popularity,
    required this.picture,
    required this.releaseDate,
    required this.voteAverage,
  });

  @override
  List<Object?> get props {
    return [
      id,
      title,
      originalTitle,
      description,
      popularity,
      picture,
      releaseDate,
      voteAverage,
    ];
  }
}
