// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_us_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutUsItemModelImpl _$$AboutUsItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AboutUsItemModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['name'] as String,
      description: json['nameAr'] as String,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$AboutUsItemModelImplToJson(
        _$AboutUsItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.title,
      'nameAr': instance.description,
      'isSelected': instance.isSelected,
    };
