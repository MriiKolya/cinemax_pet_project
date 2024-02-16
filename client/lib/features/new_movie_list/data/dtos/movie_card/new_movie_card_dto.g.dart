// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_movie_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieCardDTOImpl _$$MovieCardDTOImplFromJson(Map<String, dynamic> json) =>
    _$MovieCardDTOImpl(
      backdropPath: json['backdrop_path'] as String,
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      originalTitle: json['original_title'] as String,
      description: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$MovieCardDTOImplToJson(_$MovieCardDTOImpl instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'overview': instance.description,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
    };
