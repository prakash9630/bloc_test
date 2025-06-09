import 'package:freezed_annotation/freezed_annotation.dart';
  part 'ip_model.g.dart';
  part 'ip_model.freezed.dart';

@freezed
abstract class IpModel with _$IpModel {
  const factory IpModel({
    required String ip,
    required String city,
    required String region,
    required String country,
    required String loc,
    required String org,
    required String postal,
    required String timezone,
    required String readme,
  }) = _IpModel;

  factory IpModel.fromJson(Map<String, dynamic> json) => _$IpModelFromJson(json);
}
