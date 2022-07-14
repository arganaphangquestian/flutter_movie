// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteSuccess<T> value) success,
    required TResult Function(RemoteError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoteSuccess<T> value)? success,
    TResult Function(RemoteError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteSuccess<T> value)? success,
    TResult Function(RemoteError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteStateCopyWith<T, $Res> {
  factory $RemoteStateCopyWith(
          RemoteState<T> value, $Res Function(RemoteState<T>) then) =
      _$RemoteStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$RemoteStateCopyWithImpl<T, $Res>
    implements $RemoteStateCopyWith<T, $Res> {
  _$RemoteStateCopyWithImpl(this._value, this._then);

  final RemoteState<T> _value;
  // ignore: unused_field
  final $Res Function(RemoteState<T>) _then;
}

/// @nodoc
abstract class _$$RemoteSuccessCopyWith<T, $Res> {
  factory _$$RemoteSuccessCopyWith(
          _$RemoteSuccess<T> value, $Res Function(_$RemoteSuccess<T>) then) =
      __$$RemoteSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$RemoteSuccessCopyWithImpl<T, $Res>
    extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$$RemoteSuccessCopyWith<T, $Res> {
  __$$RemoteSuccessCopyWithImpl(
      _$RemoteSuccess<T> _value, $Res Function(_$RemoteSuccess<T>) _then)
      : super(_value, (v) => _then(v as _$RemoteSuccess<T>));

  @override
  _$RemoteSuccess<T> get _value => super._value as _$RemoteSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RemoteSuccess<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RemoteSuccess<T> implements RemoteSuccess<T> {
  const _$RemoteSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'RemoteState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$RemoteSuccessCopyWith<T, _$RemoteSuccess<T>> get copyWith =>
      __$$RemoteSuccessCopyWithImpl<T, _$RemoteSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteSuccess<T> value) success,
    required TResult Function(RemoteError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoteSuccess<T> value)? success,
    TResult Function(RemoteError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteSuccess<T> value)? success,
    TResult Function(RemoteError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RemoteSuccess<T> implements RemoteState<T> {
  const factory RemoteSuccess({required final T data}) = _$RemoteSuccess<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RemoteSuccessCopyWith<T, _$RemoteSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteErrorCopyWith<T, $Res> {
  factory _$$RemoteErrorCopyWith(
          _$RemoteError<T> value, $Res Function(_$RemoteError<T>) then) =
      __$$RemoteErrorCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$RemoteErrorCopyWithImpl<T, $Res>
    extends _$RemoteStateCopyWithImpl<T, $Res>
    implements _$$RemoteErrorCopyWith<T, $Res> {
  __$$RemoteErrorCopyWithImpl(
      _$RemoteError<T> _value, $Res Function(_$RemoteError<T>) _then)
      : super(_value, (v) => _then(v as _$RemoteError<T>));

  @override
  _$RemoteError<T> get _value => super._value as _$RemoteError<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$RemoteError<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoteError<T> implements RemoteError<T> {
  const _$RemoteError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RemoteState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteError<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$RemoteErrorCopyWith<T, _$RemoteError<T>> get copyWith =>
      __$$RemoteErrorCopyWithImpl<T, _$RemoteError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteSuccess<T> value) success,
    required TResult Function(RemoteError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoteSuccess<T> value)? success,
    TResult Function(RemoteError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteSuccess<T> value)? success,
    TResult Function(RemoteError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoteError<T> implements RemoteState<T> {
  const factory RemoteError({required final String message}) = _$RemoteError<T>;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RemoteErrorCopyWith<T, _$RemoteError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
