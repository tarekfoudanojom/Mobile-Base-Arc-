import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_percentage_model.freezed.dart';

part 'brand_percentage_model.g.dart';

@freezed
class BrandPercentageModel with _$BrandPercentageModel {
  const BrandPercentageModel._();

  @JsonSerializable(explicitToJson: true)
  factory BrandPercentageModel({
    int? profile,
    @JsonKey(name: "total_percentage") int? totalPercentage,
    int? verification,
  }) = _BrandPercentageModel;

  factory BrandPercentageModel.fromJson(Map<String, dynamic> json) => _$BrandPercentageModelFromJson(json);
}
