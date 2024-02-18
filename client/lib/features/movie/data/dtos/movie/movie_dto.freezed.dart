// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDTO _$MovieDTOFromJson(Map<String, dynamic> json) {
  return _MovieCardDTO.fromJson(json);
}

/// @nodoc
mixin _$MovieDTO {
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity')
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDTOCopyWith<MovieDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDTOCopyWith<$Res> {
  factory $MovieDTOCopyWith(MovieDTO value, $Res Function(MovieDTO) then) =
      _$MovieDTOCopyWithImpl<$Res, MovieDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'overview') String description,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'genre_ids') List<int> genres});
}

/// @nodoc
class _$MovieDTOCopyWithImpl<$Res, $Val extends MovieDTO>
    implements $MovieDTOCopyWith<$Res> {
  _$MovieDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = null,
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? description = null,
    Object? popularity = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieCardDTOImplCopyWith<$Res>
    implements $MovieDTOCopyWith<$Res> {
  factory _$$MovieCardDTOImplCopyWith(
          _$MovieCardDTOImpl value, $Res Function(_$MovieCardDTOImpl) then) =
      __$$MovieCardDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'overview') String description,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'genre_ids') List<int> genres});
}

/// @nodoc
class __$$MovieCardDTOImplCopyWithImpl<$Res>
    extends _$MovieDTOCopyWithImpl<$Res, _$MovieCardDTOImpl>
    implements _$$MovieCardDTOImplCopyWith<$Res> {
  __$$MovieCardDTOImplCopyWithImpl(
      _$MovieCardDTOImpl _value, $Res Function(_$MovieCardDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = null,
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? description = null,
    Object? popularity = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? genres = null,
  }) {
    return _then(_$MovieCardDTOImpl(
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieCardDTOImpl extends _MovieCardDTO {
  _$MovieCardDTOImpl(
      {@JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'original_title') required this.originalTitle,
      @JsonKey(name: 'overview') required this.description,
      @JsonKey(name: 'popularity') required this.popularity,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'genre_ids') required final List<int> genres})
      : _genres = genres,
        super._();

  factory _$MovieCardDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieCardDTOImplFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'overview')
  final String description;
  @override
  @JsonKey(name: 'popularity')
  final double popularity;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  final List<int> _genres;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'MovieDTO(backdropPath: $backdropPath, id: $id, title: $title, originalTitle: $originalTitle, description: $description, popularity: $popularity, releaseDate: $releaseDate, voteAverage: $voteAverage, genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCardDTOImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      id,
      title,
      originalTitle,
      description,
      popularity,
      releaseDate,
      voteAverage,
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCardDTOImplCopyWith<_$MovieCardDTOImpl> get copyWith =>
      __$$MovieCardDTOImplCopyWithImpl<_$MovieCardDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieCardDTOImplToJson(
      this,
    );
  }
}

abstract class _MovieCardDTO extends MovieDTO {
  factory _MovieCardDTO(
          {@JsonKey(name: 'backdrop_path') required final String backdropPath,
          @JsonKey(name: 'id', defaultValue: 0) required final int id,
          @JsonKey(name: 'title', defaultValue: '') required final String title,
          @JsonKey(name: 'original_title') required final String originalTitle,
          @JsonKey(name: 'overview') required final String description,
          @JsonKey(name: 'popularity') required final double popularity,
          @JsonKey(name: 'release_date') required final String releaseDate,
          @JsonKey(name: 'vote_average') required final double voteAverage,
          @JsonKey(name: 'genre_ids') required final List<int> genres}) =
      _$MovieCardDTOImpl;
  _MovieCardDTO._() : super._();

  factory _MovieCardDTO.fromJson(Map<String, dynamic> json) =
      _$MovieCardDTOImpl.fromJson;

  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get title;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @JsonKey(name: 'overview')
  String get description;
  @override
  @JsonKey(name: 'popularity')
  double get popularity;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genres;
  @override
  @JsonKey(ignore: true)
  _$$MovieCardDTOImplCopyWith<_$MovieCardDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
