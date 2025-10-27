// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentCategoryModelImpl _$$AgentCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentCategoryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      status: (json['status'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      nameAr: json['name_ar'] as String?,
    );

Map<String, dynamic> _$$AgentCategoryModelImplToJson(
        _$AgentCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'rating': instance.rating,
      'name_ar': instance.nameAr,
    };
