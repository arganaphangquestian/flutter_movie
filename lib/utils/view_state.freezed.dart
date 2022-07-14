// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewInitial<T> value) initial,
    required TResult Function(ViewLoading<T> value) loading,
    required TResult Function(ViewSuccess<T> value) success,
    required TResult Function(ViewError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<T, $Res> {
  factory $ViewStateCopyWith(
          ViewState<T> value, $Res Function(ViewState<T>) then) =
      _$ViewStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<T, $Res> implements $ViewStateCopyWith<T, $Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState<T> _value;
  // ignore: unused_field
  final $Res Function(ViewState<T>) _then;
}

/// @nodoc
abstract class _$$ViewInitialCopyWith<T, $Res> {
  factory _$$ViewInitialCopyWith(
          _$ViewInitial<T> value, $Res Function(_$ViewInitial<T>) then) =
      __$$ViewInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ViewInitialCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res>
    implements _$$ViewInitialCopyWith<T, $Res> {
  __$$ViewInitialCopyWithImpl(
      _$ViewInitial<T> _value, $Res Function(_$ViewInitial<T>) _then)
      : super(_value, (v) => _then(v as _$ViewInitial<T>));

  @override
  _$ViewInitial<T> get _value => super._value as _$ViewInitial<T>;
}

/// @nodoc

class _$ViewInitial<T> implements ViewInitial<T> {
  const _$ViewInitial();

  @override
  String toString() {
    return 'ViewState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewInitial<T> value) initial,
    required TResult Function(ViewLoading<T> value) loading,
    required TResult Function(ViewSuccess<T> value) success,
    required TResult Function(ViewError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ViewInitial<T> implements ViewState<T> {
  const factory ViewInitial() = _$ViewInitial<T>;
}

/// @nodoc
abstract class _$$ViewLoadingCopyWith<T, $Res> {
  factory _$$ViewLoadingCopyWith(
          _$ViewLoading<T> value, $Res Function(_$ViewLoading<T>) then) =
      __$$ViewLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ViewLoadingCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res>
    implements _$$ViewLoadingCopyWith<T, $Res> {
  __$$ViewLoadingCopyWithImpl(
      _$ViewLoading<T> _value, $Res Function(_$ViewLoading<T>) _then)
      : super(_value, (v) => _then(v as _$ViewLoading<T>));

  @override
  _$ViewLoading<T> get _value => super._value as _$ViewLoading<T>;
}

/// @nodoc

class _$ViewLoading<T> implements ViewLoading<T> {
  const _$ViewLoading();

  @override
  String toString() {
    return 'ViewState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewInitial<T> value) initial,
    required TResult Function(ViewLoading<T> value) loading,
    required TResult Function(ViewSuccess<T> value) success,
    required TResult Function(ViewError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViewLoading<T> implements ViewState<T> {
  const factory ViewLoading() = _$ViewLoading<T>;
}

/// @nodoc
abstract class _$$ViewSuccessCopyWith<T, $Res> {
  factory _$$ViewSuccessCopyWith(
          _$ViewSuccess<T> value, $Res Function(_$ViewSuccess<T>) then) =
      __$$ViewSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$ViewSuccessCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res>
    implements _$$ViewSuccessCopyWith<T, $Res> {
  __$$ViewSuccessCopyWithImpl(
      _$ViewSuccess<T> _value, $Res Function(_$ViewSuccess<T>) _then)
      : super(_value, (v) => _then(v as _$ViewSuccess<T>));

  @override
  _$ViewSuccess<T> get _value => super._value as _$ViewSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ViewSuccess<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ViewSuccess<T> implements ViewSuccess<T> {
  const _$ViewSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'ViewState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$ViewSuccessCopyWith<T, _$ViewSuccess<T>> get copyWith =>
      __$$ViewSuccessCopyWithImpl<T, _$ViewSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(ViewInitial<T> value) initial,
    required TResult Function(ViewLoading<T> value) loading,
    required TResult Function(ViewSuccess<T> value) success,
    required TResult Function(ViewError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ViewSuccess<T> implements ViewState<T> {
  const factory ViewSuccess({required final T data}) = _$ViewSuccess<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ViewSuccessCopyWith<T, _$ViewSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewErrorCopyWith<T, $Res> {
  factory _$$ViewErrorCopyWith(
          _$ViewError<T> value, $Res Function(_$ViewError<T>) then) =
      __$$ViewErrorCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ViewErrorCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res>
    implements _$$ViewErrorCopyWith<T, $Res> {
  __$$ViewErrorCopyWithImpl(
      _$ViewError<T> _value, $Res Function(_$ViewError<T>) _then)
      : super(_value, (v) => _then(v as _$ViewError<T>));

  @override
  _$ViewError<T> get _value => super._value as _$ViewError<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ViewError<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ViewError<T> implements ViewError<T> {
  const _$ViewError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ViewState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewError<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ViewErrorCopyWith<T, _$ViewError<T>> get copyWith =>
      __$$ViewErrorCopyWithImpl<T, _$ViewError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(ViewInitial<T> value) initial,
    required TResult Function(ViewLoading<T> value) loading,
    required TResult Function(ViewSuccess<T> value) success,
    required TResult Function(ViewError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewInitial<T> value)? initial,
    TResult Function(ViewLoading<T> value)? loading,
    TResult Function(ViewSuccess<T> value)? success,
    TResult Function(ViewError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ViewError<T> implements ViewState<T> {
  const factory ViewError({required final String message}) = _$ViewError<T>;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ViewErrorCopyWith<T, _$ViewError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
