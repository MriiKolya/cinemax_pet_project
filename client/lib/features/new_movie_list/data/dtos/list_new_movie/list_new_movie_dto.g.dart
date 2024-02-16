// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_new_movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListNewMovieDTO _$ListNewMovieDTOFromJson(Map<String, dynamic> json) =>
    ListNewMovieDTO(
      movies: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieCardDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListNewMovieDTOToJson(ListNewMovieDTO instance) =>
    <String, dynamic>{
      'results': instance.movies,
    };
