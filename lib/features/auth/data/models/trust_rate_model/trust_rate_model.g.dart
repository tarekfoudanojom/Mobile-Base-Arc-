// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trust_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrustRateModelImpl _$$TrustRateModelImplFromJson(Map<String, dynamic> json) =>
    _$TrustRateModelImpl(
      email: (json['email'] as num).toInt(),
      phoneNumber: (json['phone_number'] as num?)?.toInt(),
      crId: (json['cr_id'] as num?)?.toInt(),
      mwthooqId: (json['mawthooq_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TrustRateModelImplToJson(
        _$TrustRateModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'cr_id': instance.crId,
      'mawthooq_id': instance.mwthooqId,
    };
