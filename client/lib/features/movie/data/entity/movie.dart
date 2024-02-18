import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String title;
  final String? originalTitle;
  final String? description;
  final double? popularity;
  final String? picture;
  final DateTime? releaseDate;
  final double? voteAverage;
  final List<int>? genres;

  const MovieEntity({
    required this.id,
    required this.title,
    this.genres,
    this.originalTitle,
    this.description,
    this.popularity,
    this.picture,
    this.releaseDate,
    this.voteAverage,
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
