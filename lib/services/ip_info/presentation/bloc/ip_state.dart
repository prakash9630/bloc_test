
import 'package:bloc_test/services/ip_info/data/model/ip_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ip_state.freezed.dart';

 @freezed
 sealed class IpState with _$IpState {
  const factory IpState.initial() = Initial;
  const factory IpState.loading()= Loading;
  const factory IpState.success(IpModel model) = Success;
  const factory IpState.error(String message) = Error;
}