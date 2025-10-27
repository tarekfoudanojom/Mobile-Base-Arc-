import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_product_model.freezed.dart';
part 'store_product_model.g.dart';

@freezed
class StoreProductModel with _$StoreProductModel {
  const StoreProductModel._();
  @JsonSerializable(explicitToJson: true)
  factory StoreProductModel({
    @JsonKey(name: 'data') required List<StoreProductListModel> data,
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'pages_count') int? pagesCount,
    @JsonKey(name: 'path') String? path,
  }) = _StoreProductModel;

  factory StoreProductModel.fromJson(Map<String, dynamic> json) =>
      _$StoreProductModelFromJson(json);
}

@freezed
class StoreProductListModel with _$StoreProductListModel {
  const StoreProductListModel._();
  @JsonSerializable(explicitToJson: true)
  factory StoreProductListModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'store_id') required int storeId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'filename') String? filename,
    @JsonKey(name: 'profile_id') int? profileId,
    @JsonKey(name: 'display_order') dynamic displayOrder,
    @JsonKey(name: 'public_status') int? publicStatus,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'price') num? price,
    @JsonKey(name: 'currency') dynamic currency,
  }) = _StoreProductListModel;

  factory StoreProductListModel.fromJson(Map<String, dynamic> json) =>
      _$StoreProductListModelFromJson(json);
}
