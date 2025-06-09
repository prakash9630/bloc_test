
import 'package:bloc_test/network/call_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'common_state.freezed.dart';

@freezed
sealed class CommonState<T> with _$CommonState<T> {
  const factory CommonState.initial() = Initial<T>;
  const factory CommonState.loading() = Loading<T>;
  const factory CommonState.success(T data) = Success<T>;
  const factory CommonState.error(Failure failure) = Error<T>;
}