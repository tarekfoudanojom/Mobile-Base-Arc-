// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SkillModelImpl _$$SkillModelImplFromJson(Map<String, dynamic> json) =>
    _$SkillModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      nameAr: json['name_ar'] as String,
      numberOfStars: json['number_of_stars'],
      status: json['status'] as num?,
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$SkillModelImplToJson(_$SkillModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.nameAr,
      'number_of_stars': instance.numberOfStars,
      'status': instance.status,
      'selected': instance.selected,
    };
