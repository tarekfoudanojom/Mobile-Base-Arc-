import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypted_model.freezed.dart';
part 'encrypted_model.g.dart';

@freezed
class EncryptedModel with _$EncryptedModel{
  const EncryptedModel._();
  factory EncryptedModel({
  required String message,
    required String status,
    required String data,
  }) = _EncryptedModel;


  factory EncryptedModel.fromJson(Map<String, dynamic> json) =>
      _$EncryptedModelFromJson(json);
}