
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_code_model.freezed.dart';
part 'verify_code_model.g.dart';

@freezed
class VerifyCodeModel with _$VerifyCodeModel{
  const VerifyCodeModel._();
  @JsonSerializable(explicitToJson: true)
  factory VerifyCodeModel({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "token") required String token,
  }) = _VerifyCodeModel;


  factory VerifyCodeModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeModelFromJson(json);
}