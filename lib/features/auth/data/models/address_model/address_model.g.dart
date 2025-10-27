// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: (json['id'] as num).toInt(),
      profileId: (json['profile_id'] as num).toInt(),
      country: json['country'] as String?,
      region: json['region'] as String?,
      city: json['city'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      proAddress: json['pro_address'] as String?,
      timestamp: json['timestamp'],
      status: (json['status'] as num).toInt(),
      countryId: (json['countryID'] as num).toInt(),
      cityId: (json['cityID'] as num?)?.toInt(),
      stateId: (json['stateID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_id': instance.profileId,
      'country': instance.country,
      'region': instance.region,
      'city': instance.city,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'pro_address': instance.proAddress,
      'timestamp': instance.timestamp,
      'status': instance.status,
      'countryID': instance.countryId,
      'cityID': instance.cityId,
      'stateID': instance.stateId,
    };
