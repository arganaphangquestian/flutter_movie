import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_state.freezed.dart';

@freezed
class RemoteState<T> with _$RemoteState<T> {
  const factory RemoteState.success({
    required T data,
  }) = RemoteSuccess<T>;
  const factory RemoteState.error({
    required String message,
  }) = RemoteError<T>;
}
