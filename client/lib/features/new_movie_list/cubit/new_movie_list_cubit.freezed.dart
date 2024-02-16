// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_movie_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewMovieListState {
  ListNewMovieEntity get listNewMovie => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewMovieListStateCopyWith<NewMovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewMovieListStateCopyWith<$Res> {
  factory $NewMovieListStateCopyWith(
          NewMovieListState value, $Res Function(NewMovieListState) then) =
      _$NewMovieListStateCopyWithImpl<$Res, NewMovieListState>;
  @useResult
  $Res call({ListNewMovieEntity listNewMovie, bool loading, String? error});
}

/// @nodoc
class _$NewMovieListStateCopyWithImpl<$Res, $Val extends NewMovieListState>
    implements $NewMovieListStateCopyWith<$Res> {
  _$NewMovieListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listNewMovie = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      listNewMovie: null == listNewMovie
          ? _value.listNewMovie
          : listNewMovie // ignore: cast_nullable_to_non_nullable
              as ListNewMovieEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewMovieListStateImplCopyWith<$Res>
    implements $NewMovieListStateCopyWith<$Res> {
  factory _$$NewMovieListStateImplCopyWith(_$NewMovieListStateImpl value,
          $Res Function(_$NewMovieListStateImpl) then) =
      __$$NewMovieListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListNewMovieEntity listNewMovie, bool loading, String? error});
}

/// @nodoc
class __$$NewMovieListStateImplCopyWithImpl<$Res>
    extends _$NewMovieListStateCopyWithImpl<$Res, _$NewMovieListStateImpl>
    implements _$$NewMovieListStateImplCopyWith<$Res> {
  __$$NewMovieListStateImplCopyWithImpl(_$NewMovieListStateImpl _value,
      $Res Function(_$NewMovieListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listNewMovie = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$NewMovieListStateImpl(
      listNewMovie: null == listNewMovie
          ? _value.listNewMovie
          : listNewMovie // ignore: cast_nullable_to_non_nullable
              as ListNewMovieEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewMovieListStateImpl implements _NewMovieListState {
  const _$NewMovieListStateImpl(
      {required this.listNewMovie, this.loading = false, this.error});

  @override
  final ListNewMovieEntity listNewMovie;
  @override
  @JsonKey()
  final bool loading;
  @override
  final String? error;

  @override
  String toString() {
    return 'NewMovieListState(listNewMovie: $listNewMovie, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMovieListStateImpl &&
            (identical(other.listNewMovie, listNewMovie) ||
                other.listNewMovie == listNewMovie) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listNewMovie, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMovieListStateImplCopyWith<_$NewMovieListStateImpl> get copyWith =>
      __$$NewMovieListStateImplCopyWithImpl<_$NewMovieListStateImpl>(
          this, _$identity);
}

abstract class _NewMovieListState implements NewMovieListState {
  const factory _NewMovieListState(
      {required final ListNewMovieEntity listNewMovie,
      final bool loading,
      final String? error}) = _$NewMovieListStateImpl;

  @override
  ListNewMovieEntity get listNewMovie;
  @override
  bool get loading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$NewMovieListStateImplCopyWith<_$NewMovieListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
