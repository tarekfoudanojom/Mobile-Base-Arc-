import 'package:freezed_annotation/freezed_annotation.dart';

part 'expertise_model.freezed.dart';
part 'expertise_model.g.dart';

@freezed
class ExpertiseModel with _$ExpertiseModel{
  const ExpertiseModel._();
  @JsonSerializable(explicitToJson: true)
  factory ExpertiseModel({
  @JsonKey(name: "id")   int? id,
  @JsonKey(name: "name")  String? name,
  @JsonKey(name: "name_ar")  String? nameAr,
  @JsonKey(name: "name_app")  String? nameApp,
  @JsonKey(name: "length")  int? length,
  }) = _ExpertiseModel;


  factory ExpertiseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpertiseModelFromJson(json);
}