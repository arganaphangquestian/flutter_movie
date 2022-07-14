// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'film.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Film {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  FilmType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilmCopyWith<Film> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmCopyWith<$Res> {
  factory $FilmCopyWith(Film value, $Res Function(Film) then) =
      _$FilmCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      double voteAverage,
      String posterPath,
      String overview,
      FilmType type});
}

/// @nodoc
class _$FilmCopyWithImpl<$Res> implements $FilmCopyWith<$Res> {
  _$FilmCopyWithImpl(this._value, this._then);

  final Film _value;
  // ignore: unused_field
  final $Res Function(Film) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? voteAverage = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FilmType,
    ));
  }
}

/// @nodoc
abstract class _$$_FilmCopyWith<$Res> implements $FilmCopyWith<$Res> {
  factory _$$_FilmCopyWith(_$_Film value, $Res Function(_$_Film) then) =
      __$$_FilmCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      double voteAverage,
      String posterPath,
      String overview,
      FilmType type});
}

/// @nodoc
class __$$_FilmCopyWithImpl<$Res> extends _$FilmCopyWithImpl<$Res>
    implements _$$_FilmCopyWith<$Res> {
  __$$_FilmCopyWithImpl(_$_Film _value, $Res Function(_$_Film) _then)
      : super(_value, (v) => _then(v as _$_Film));

  @override
  _$_Film get _value => super._value as _$_Film;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? voteAverage = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Film(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FilmType,
    ));
  }
}

/// @nodoc

class _$_Film implements _Film {
  _$_Film(
      {required this.id,
      required this.name,
      required this.voteAverage,
      required this.posterPath,
      required this.overview,
      required this.type});

  @override
  final int id;
  @override
  final String name;
  @override
  final double voteAverage;
  @override
  final String posterPath;
  @override
  final String overview;
  @override
  final FilmType type;

  @override
  String toString() {
    return 'Film(id: $id, name: $name, voteAverage: $voteAverage, posterPath: $posterPath, overview: $overview, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Film &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_FilmCopyWith<_$_Film> get copyWith =>
      __$$_FilmCopyWithImpl<_$_Film>(this, _$identity);
}

abstract class _Film implements Film {
  factory _Film(
      {required final int id,
      required final String name,
      required final double voteAverage,
      required final String posterPath,
      required final String overview,
      required final FilmType type}) = _$_Film;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get voteAverage => throw _privateConstructorUsedError;
  @override
  String get posterPath => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  FilmType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FilmCopyWith<_$_Film> get copyWith => throw _privateConstructorUsedError;
}
