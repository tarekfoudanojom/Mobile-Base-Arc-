import 'package:freezed_annotation/freezed_annotation.dart';

part 'delegation_token_model.freezed.dart';
part 'delegation_token_model.g.dart';

@freezed
class DelegationTokenModel with _$DelegationTokenModel {
  const factory DelegationTokenModel({
    @JsonKey(name: "token") required String token,
  }) = _DelegationTokenModel;

  factory DelegationTokenModel.fromJson(Map<String, dynamic> json) =>
      _$DelegationTokenModelFromJson(json);
}
