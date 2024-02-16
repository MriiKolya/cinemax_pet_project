import 'package:client/features/new_movie_list/data/dtos/movie_card/new_movie_card_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_new_movie_dto.g.dart';

@JsonSerializable()
class ListNewMovieDTO {
  @JsonKey(name: 'results')
  final List<MovieCardDTO>? movies;

  ListNewMovieDTO({required this.movies});

  factory ListNewMovieDTO.fromJson(Map<String, dynamic> json) =>
      _$ListNewMovieDTOFromJson(json);
}
