// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star_stores_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StarStoresModelImpl _$$StarStoresModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StarStoresModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => AgentStoreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num?)?.toInt(),
      pagesCount: (json['pages_count'] as num?)?.toInt(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$StarStoresModelImplToJson(
        _$StarStoresModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'pages_count': instance.pagesCount,
      'path': instance.path,
    };
