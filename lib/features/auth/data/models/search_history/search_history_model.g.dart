// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchHistoryResponseModelImpl _$$SearchHistoryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchHistoryResponseModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SearchHistoryDataResponseModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : SearchHistoryPaginationResponseModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchHistoryResponseModelImplToJson(
        _$SearchHistoryResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
    };

_$SearchHistoryPaginationResponseModelImpl
    _$$SearchHistoryPaginationResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SearchHistoryPaginationResponseModelImpl(
          id: (json['total'] as num?)?.toInt(),
          page: (json['page'] as num?)?.toInt(),
          limit: (json['limit'] as num?)?.toInt(),
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$SearchHistoryPaginationResponseModelImplToJson(
        _$SearchHistoryPaginationResponseModelImpl instance) =>
    <String, dynamic>{
      'total': instance.id,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };

_$SearchHistoryDataResponseModelImpl
    _$$SearchHistoryDataResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$SearchHistoryDataResponseModelImpl(
          profileId: (json['profile_id'] as num?)?.toInt(),
          id: (json['id'] as num?)?.toInt(),
          term: json['term'] as String?,
          source: json['source'] as String?,
          lastSearchedAt: json['last_searched_at'] as String?,
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$SearchHistoryDataResponseModelImplToJson(
        _$SearchHistoryDataResponseModelImpl instance) =>
    <String, dynamic>{
      'profile_id': instance.profileId,
      'id': instance.id,
      'term': instance.term,
      'source': instance.source,
      'last_searched_at': instance.lastSearchedAt,
      'count': instance.count,
    };
