import 'package:client/features/new_movie_list/data/dtos/new_movie/new_movie_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_new_movie_dto.g.dart';
part 'list_new_movie_dto.freezed.dart';

@freezed
class ListNewMovieDTO with _$ListNewMovieDTO {
  ListNewMovieDTO._();

  const factory ListNewMovieDTO({
    @JsonKey(name: 'results') required List<NewMovieDTO>? movies,
  }) = _ListNewMovieDTO;

  factory ListNewMovieDTO.fromJson(Map<String, dynamic> json) =>
      _$ListNewMovieDTOFromJson(json);
}
