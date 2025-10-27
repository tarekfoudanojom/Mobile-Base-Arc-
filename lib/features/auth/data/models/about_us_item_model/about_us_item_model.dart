import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_us_item_model.freezed.dart';

part 'about_us_item_model.g.dart';

@unfreezed
class AboutUsItemModel with _$AboutUsItemModel {
  const AboutUsItemModel._();

  @JsonSerializable(explicitToJson: true)
  factory AboutUsItemModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String title,
    @JsonKey(name: 'nameAr') required String description,
    @JsonKey(defaultValue: false) bool? isSelected,
  }) = _AboutUsItemModel;

  factory AboutUsItemModel.fromJson(Map<String, dynamic> json) => _$AboutUsItemModelFromJson(json);
}
