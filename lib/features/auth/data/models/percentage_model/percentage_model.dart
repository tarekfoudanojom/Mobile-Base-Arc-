import 'package:freezed_annotation/freezed_annotation.dart';

part 'percentage_model.freezed.dart';

part 'percentage_model.g.dart';

@unfreezed
class PercentageModel with _$PercentageModel {
  const PercentageModel._();

  @JsonSerializable(explicitToJson: true)
  factory PercentageModel({
    @JsonKey(name: "private_info") double? privateInfo,
    @JsonKey(name: "skill") double? skill,
    @JsonKey(name: "verification") double? verification,
    @JsonKey(name: "total_percentage") num? totalPercentage,
  }) = _PercentageModel;

  factory PercentageModel.fromJson(Map<String, dynamic> json) => _$PercentageModelFromJson(json);
}
