import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_movie_card_dto.g.dart';
part 'new_movie_card_dto.freezed.dart';

@freezed
class MovieCardDTO with _$MovieCardDTO {
  MovieCardDTO._();

  factory MovieCardDTO({
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'overview') required String description,
    @JsonKey(name: 'popularity') required double popularity,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _MovieCardDTO;

  factory MovieCardDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieCardDTOFromJson(json);
}
