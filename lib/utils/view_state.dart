import 'package:freezed_annotation/freezed_annotation.dart';
part 'view_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {
  const factory ViewState.initial() = ViewInitial<T>;
  const factory ViewState.loading() = ViewLoading<T>;
  const factory ViewState.success({required T data}) = ViewSuccess<T>;
  const factory ViewState.error({required String message}) = ViewError<T>;
}
