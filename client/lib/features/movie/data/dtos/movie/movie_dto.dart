import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_dto.g.dart';
part 'movie_dto.freezed.dart';

@freezed
class MovieDTO with _$MovieDTO {
  MovieDTO._();

  factory MovieDTO({
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'overview') required String description,
    @JsonKey(name: 'popularity') required double popularity,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'genre_ids') required List<int> genres,
  }) = _MovieCardDTO;

  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDTOFromJson(json);
}
