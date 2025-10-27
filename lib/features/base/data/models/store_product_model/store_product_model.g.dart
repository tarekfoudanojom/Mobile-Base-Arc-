// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreProductModelImpl _$$StoreProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreProductModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => StoreProductListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num?)?.toInt(),
      pagesCount: (json['pages_count'] as num?)?.toInt(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$StoreProductModelImplToJson(
        _$StoreProductModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'pages_count': instance.pagesCount,
      'path': instance.path,
    };

_$StoreProductListModelImpl _$$StoreProductListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreProductListModelImpl(
      id: (json['id'] as num).toInt(),
      storeId: (json['store_id'] as num).toInt(),
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
      currency: json['currency'],
    );

Map<String, dynamic> _$$StoreProductListModelImplToJson(
        _$StoreProductListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
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
