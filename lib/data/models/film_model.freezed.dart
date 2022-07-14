// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'film_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmModel _$FilmModelFromJson(Map<String, dynamic> json) {
  return _FilmModel.fromJson(json);
}

/// @nodoc
mixin _$FilmModel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmModelCopyWith<FilmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmModelCopyWith<$Res> {
  factory $FilmModelCopyWith(FilmModel value, $Res Function(FilmModel) then) =
      _$FilmModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      String? title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'poster_path') String? posterPath,
      String overview});
}

/// @nodoc
class _$FilmModelCopyWithImpl<$Res> implements $FilmModelCopyWith<$Res> {
  _$FilmModelCopyWithImpl(this._value, this._then);

  final FilmModel _value;
  // ignore: unused_field
  final $Res Function(FilmModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FilmModelCopyWith<$Res> implements $FilmModelCopyWith<$Res> {
  factory _$$_FilmModelCopyWith(
          _$_FilmModel value, $Res Function(_$_FilmModel) then) =
      __$$_FilmModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      String? title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'poster_path') String? posterPath,
      String overview});
}

/// @nodoc
class __$$_FilmModelCopyWithImpl<$Res> extends _$FilmModelCopyWithImpl<$Res>
    implements _$$_FilmModelCopyWith<$Res> {
  __$$_FilmModelCopyWithImpl(
      _$_FilmModel _value, $Res Function(_$_FilmModel) _then)
      : super(_value, (v) => _then(v as _$_FilmModel));

  @override
  _$_FilmModel get _value => super._value as _$_FilmModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$_FilmModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmModel with DiagnosticableTreeMixin implements _FilmModel {
  _$_FilmModel(
      this.id,
      this.name,
      this.title,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'poster_path') this.posterPath,
      this.overview);

  factory _$_FilmModel.fromJson(Map<String, dynamic> json) =>
      _$$_FilmModelFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? title;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  final String overview;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilmModel(id: $id, name: $name, title: $title, voteAverage: $voteAverage, posterPath: $posterPath, overview: $overview)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilmModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('voteAverage', voteAverage))
      ..add(DiagnosticsProperty('posterPath', posterPath))
      ..add(DiagnosticsProperty('overview', overview));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.overview, overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(overview));

  @JsonKey(ignore: true)
  @override
  _$$_FilmModelCopyWith<_$_FilmModel> get copyWith =>
      __$$_FilmModelCopyWithImpl<_$_FilmModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmModelToJson(this);
  }
}

abstract class _FilmModel implements FilmModel {
  factory _FilmModel(
      final int id,
      final String? name,
      final String? title,
      @JsonKey(name: 'vote_average') final double voteAverage,
      @JsonKey(name: 'poster_path') final String? posterPath,
      final String overview) = _$_FilmModel;

  factory _FilmModel.fromJson(Map<String, dynamic> json) =
      _$_FilmModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FilmModelCopyWith<_$_FilmModel> get copyWith =>
      throw _privateConstructorUsedError;
}
