import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_pass_model.freezed.dart';
part 'forget_pass_model.g.dart';

@freezed
class ForgetPassModel with _$ForgetPassModel{
  const ForgetPassModel._();
  @JsonSerializable(explicitToJson: true)
  factory ForgetPassModel({
     required String status,
  }) = _ForgetPassModel;


  factory ForgetPassModel.fromJson(Map<String, dynamic> json) =>
      _$ForgetPassModelFromJson(json);
}