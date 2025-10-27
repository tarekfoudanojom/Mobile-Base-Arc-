// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PortfolioItemModelImpl _$$PortfolioItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PortfolioItemModelImpl(
      id: (json['id'] as num).toInt(),
      profileId: (json['profile_id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      timestamp: json['timestamp'] as String?,
      lastUpdate: json['last_update'] as String?,
      filename: json['filename'] as String?,
      companyId: (json['company_id'] as num?)?.toInt(),
      displayOrder: (json['display_order'] as num?)?.toInt(),
      publicStatus: (json['public_status'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      companyName: json['company_name'] as String?,
      companyNameAr: json['company_name_ar'] as String?,
      companyFilename: json['company_filename'] as String?,
    );

Map<String, dynamic> _$$PortfolioItemModelImplToJson(
        _$PortfolioItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_id': instance.profileId,
      'title': instance.title,
      'description': instance.description,
      'timestamp': instance.timestamp,
      'last_update': instance.lastUpdate,
      'filename': instance.filename,
      'company_id': instance.companyId,
      'display_order': instance.displayOrder,
      'public_status': instance.publicStatus,
      'status': instance.status,
      'company_name': instance.companyName,
      'company_name_ar': instance.companyNameAr,
      'company_filename': instance.companyFilename,
    };
