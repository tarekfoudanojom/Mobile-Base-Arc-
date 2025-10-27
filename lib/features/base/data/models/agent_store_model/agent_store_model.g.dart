// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentStoreModelImpl _$$AgentStoreModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentStoreModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      link: json['link'] as String?,
      filename: json['filename'] as String?,
      profileId: (json['profile_id'] as num?)?.toInt(),
      displayOrder: json['display_order'],
      publicStatus: (json['public_status'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      url: json['url'] as String?,
      price: json['price'] as num?,
      currency: (json['currency'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AgentStoreModelImplToJson(
        _$AgentStoreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'filename': instance.filename,
      'profile_id': instance.profileId,
      'display_order': instance.displayOrder,
      'public_status': instance.publicStatus,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'url': instance.url,
      'price': instance.price,
      'currency': instance.currency,
    };
