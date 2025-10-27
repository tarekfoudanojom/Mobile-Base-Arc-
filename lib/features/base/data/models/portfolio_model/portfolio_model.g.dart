// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PortfolioModelImpl _$$PortfolioModelImplFromJson(Map<String, dynamic> json) =>
    _$PortfolioModelImpl(
      portfolio: (json['portfolio'] as List<dynamic>?)
          ?.map((e) => PortfolioItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'],
      pagesCount: (json['pages_count'] as num?)?.toInt(),
      path: json['path'] as String,
      companyPath: json['company_path'] as String?,
    );

Map<String, dynamic> _$$PortfolioModelImplToJson(
        _$PortfolioModelImpl instance) =>
    <String, dynamic>{
      'portfolio': instance.portfolio?.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'pages_count': instance.pagesCount,
      'path': instance.path,
      'company_path': instance.companyPath,
    };
