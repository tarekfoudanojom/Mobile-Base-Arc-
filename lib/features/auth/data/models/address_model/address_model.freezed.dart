// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_id')
  int get profileId => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'pro_address')
  String? get proAddress => throw _privateConstructorUsedError;
  dynamic get timestamp => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'countryID')
  int get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'cityID')
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stateID')
  int? get stateId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'profile_id') int profileId,
      String? country,
      String? region,
      String? city,
      double? longitude,
      double? latitude,
      @JsonKey(name: 'pro_address') String? proAddress,
      dynamic timestamp,
      int status,
      @JsonKey(name: 'countryID') int countryId,
      @JsonKey(name: 'cityID') int? cityId,
      @JsonKey(name: 'stateID') int? stateId});
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profileId = null,
    Object? country = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? proAddress = freezed,
    Object? timestamp = freezed,
    Object? status = null,
    Object? countryId = null,
    Object? cityId = freezed,
    Object? stateId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      proAddress: freezed == proAddress
          ? _value.proAddress
          : proAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
          _$AddressModelImpl value, $Res Function(_$AddressModelImpl) then) =
      __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'profile_id') int profileId,
      String? country,
      String? region,
      String? city,
      double? longitude,
      double? latitude,
      @JsonKey(name: 'pro_address') String? proAddress,
      dynamic timestamp,
      int status,
      @JsonKey(name: 'countryID') int countryId,
      @JsonKey(name: 'cityID') int? cityId,
      @JsonKey(name: 'stateID') int? stateId});
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
      _$AddressModelImpl _value, $Res Function(_$AddressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profileId = null,
    Object? country = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? proAddress = freezed,
    Object? timestamp = freezed,
    Object? status = null,
    Object? countryId = null,
    Object? cityId = freezed,
    Object? stateId = freezed,
  }) {
    return _then(_$AddressModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      proAddress: freezed == proAddress
          ? _value.proAddress
          : proAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AddressModelImpl extends _AddressModel {
  _$AddressModelImpl(
      {required this.id,
      @JsonKey(name: 'profile_id') required this.profileId,
      this.country,
      this.region,
      this.city,
      this.longitude,
      this.latitude,
      @JsonKey(name: 'pro_address') this.proAddress,
      required this.timestamp,
      required this.status,
      @JsonKey(name: 'countryID') required this.countryId,
      @JsonKey(name: 'cityID') this.cityId,
      @JsonKey(name: 'stateID') this.stateId})
      : super._();

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'profile_id')
  final int profileId;
  @override
  final String? country;
  @override
  final String? region;
  @override
  final String? city;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  @JsonKey(name: 'pro_address')
  final String? proAddress;
  @override
  final dynamic timestamp;
  @override
  final int status;
  @override
  @JsonKey(name: 'countryID')
  final int countryId;
  @override
  @JsonKey(name: 'cityID')
  final int? cityId;
  @override
  @JsonKey(name: 'stateID')
  final int? stateId;

  @override
  String toString() {
    return 'AddressModel(id: $id, profileId: $profileId, country: $country, region: $region, city: $city, longitude: $longitude, latitude: $latitude, proAddress: $proAddress, timestamp: $timestamp, status: $status, countryId: $countryId, cityId: $cityId, stateId: $stateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.proAddress, proAddress) ||
                other.proAddress == proAddress) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.stateId, stateId) || other.stateId == stateId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      profileId,
      country,
      region,
      city,
      longitude,
      latitude,
      proAddress,
      const DeepCollectionEquality().hash(timestamp),
      status,
      countryId,
      cityId,
      stateId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(
      this,
    );
  }
}

abstract class _AddressModel extends AddressModel {
  factory _AddressModel(
      {required final int id,
      @JsonKey(name: 'profile_id') required final int profileId,
      final String? country,
      final String? region,
      final String? city,
      final double? longitude,
      final double? latitude,
      @JsonKey(name: 'pro_address') final String? proAddress,
      required final dynamic timestamp,
      required final int status,
      @JsonKey(name: 'countryID') required final int countryId,
      @JsonKey(name: 'cityID') final int? cityId,
      @JsonKey(name: 'stateID') final int? stateId}) = _$AddressModelImpl;
  _AddressModel._() : super._();

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'profile_id')
  int get profileId;
  @override
  String? get country;
  @override
  String? get region;
  @override
  String? get city;
  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  @JsonKey(name: 'pro_address')
  String? get proAddress;
  @override
  dynamic get timestamp;
  @override
  int get status;
  @override
  @JsonKey(name: 'countryID')
  int get countryId;
  @override
  @JsonKey(name: 'cityID')
  int? get cityId;
  @override
  @JsonKey(name: 'stateID')
  int? get stateId;
  @override
  @JsonKey(ignore: true)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
