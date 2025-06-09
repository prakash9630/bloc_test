// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IpModel {
  String get ip;
  String get city;
  String get region;
  String get country;
  String get loc;
  String get org;
  String get postal;
  String get timezone;
  String get readme;

  /// Create a copy of IpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IpModelCopyWith<IpModel> get copyWith =>
      _$IpModelCopyWithImpl<IpModel>(this as IpModel, _$identity);

  /// Serializes this IpModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IpModel &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.loc, loc) || other.loc == loc) &&
            (identical(other.org, org) || other.org == org) &&
            (identical(other.postal, postal) || other.postal == postal) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.readme, readme) || other.readme == readme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ip, city, region, country, loc,
      org, postal, timezone, readme);

  @override
  String toString() {
    return 'IpModel(ip: $ip, city: $city, region: $region, country: $country, loc: $loc, org: $org, postal: $postal, timezone: $timezone, readme: $readme)';
  }
}

/// @nodoc
abstract mixin class $IpModelCopyWith<$Res> {
  factory $IpModelCopyWith(IpModel value, $Res Function(IpModel) _then) =
      _$IpModelCopyWithImpl;
  @useResult
  $Res call(
      {String ip,
      String city,
      String region,
      String country,
      String loc,
      String org,
      String postal,
      String timezone,
      String readme});
}

/// @nodoc
class _$IpModelCopyWithImpl<$Res> implements $IpModelCopyWith<$Res> {
  _$IpModelCopyWithImpl(this._self, this._then);

  final IpModel _self;
  final $Res Function(IpModel) _then;

  /// Create a copy of IpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? city = null,
    Object? region = null,
    Object? country = null,
    Object? loc = null,
    Object? org = null,
    Object? postal = null,
    Object? timezone = null,
    Object? readme = null,
  }) {
    return _then(_self.copyWith(
      ip: null == ip
          ? _self.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      loc: null == loc
          ? _self.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as String,
      org: null == org
          ? _self.org
          : org // ignore: cast_nullable_to_non_nullable
              as String,
      postal: null == postal
          ? _self.postal
          : postal // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      readme: null == readme
          ? _self.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _IpModel implements IpModel {
  const _IpModel(
      {required this.ip,
      required this.city,
      required this.region,
      required this.country,
      required this.loc,
      required this.org,
      required this.postal,
      required this.timezone,
      required this.readme});
  factory _IpModel.fromJson(Map<String, dynamic> json) =>
      _$IpModelFromJson(json);

  @override
  final String ip;
  @override
  final String city;
  @override
  final String region;
  @override
  final String country;
  @override
  final String loc;
  @override
  final String org;
  @override
  final String postal;
  @override
  final String timezone;
  @override
  final String readme;

  /// Create a copy of IpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IpModelCopyWith<_IpModel> get copyWith =>
      __$IpModelCopyWithImpl<_IpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IpModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IpModel &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.loc, loc) || other.loc == loc) &&
            (identical(other.org, org) || other.org == org) &&
            (identical(other.postal, postal) || other.postal == postal) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.readme, readme) || other.readme == readme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ip, city, region, country, loc,
      org, postal, timezone, readme);

  @override
  String toString() {
    return 'IpModel(ip: $ip, city: $city, region: $region, country: $country, loc: $loc, org: $org, postal: $postal, timezone: $timezone, readme: $readme)';
  }
}

/// @nodoc
abstract mixin class _$IpModelCopyWith<$Res> implements $IpModelCopyWith<$Res> {
  factory _$IpModelCopyWith(_IpModel value, $Res Function(_IpModel) _then) =
      __$IpModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String ip,
      String city,
      String region,
      String country,
      String loc,
      String org,
      String postal,
      String timezone,
      String readme});
}

/// @nodoc
class __$IpModelCopyWithImpl<$Res> implements _$IpModelCopyWith<$Res> {
  __$IpModelCopyWithImpl(this._self, this._then);

  final _IpModel _self;
  final $Res Function(_IpModel) _then;

  /// Create a copy of IpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ip = null,
    Object? city = null,
    Object? region = null,
    Object? country = null,
    Object? loc = null,
    Object? org = null,
    Object? postal = null,
    Object? timezone = null,
    Object? readme = null,
  }) {
    return _then(_IpModel(
      ip: null == ip
          ? _self.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      loc: null == loc
          ? _self.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as String,
      org: null == org
          ? _self.org
          : org // ignore: cast_nullable_to_non_nullable
              as String,
      postal: null == postal
          ? _self.postal
          : postal // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      readme: null == readme
          ? _self.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
