import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_pay_types_model.freezed.dart';
part 'profile_pay_types_model.g.dart';

@freezed
class ProfilePayTypesModel with _$ProfilePayTypesModel{
  const ProfilePayTypesModel._();
  @JsonSerializable(explicitToJson: true)
  factory ProfilePayTypesModel({
    @JsonKey(name: "id") required  int id,
    @JsonKey(name: "name")required  String name,
    @JsonKey(name: "detail") required String detail,
    @JsonKey(name: "status") required int status,

  }) = _ProfilePayTypesModel;


  factory ProfilePayTypesModel.fromJson(Map<String, dynamic> json) =>
      _$ProfilePayTypesModelFromJson(json);
}