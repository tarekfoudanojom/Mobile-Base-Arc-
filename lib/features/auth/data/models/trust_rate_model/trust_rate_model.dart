import 'package:freezed_annotation/freezed_annotation.dart';

part 'trust_rate_model.freezed.dart';

part 'trust_rate_model.g.dart';

@freezed
class TrustRateModel with _$TrustRateModel {
  const TrustRateModel._();

  @JsonSerializable(explicitToJson: true)
  factory TrustRateModel({
    @JsonKey(name: "email") required int email,
    @JsonKey(name: "phone_number") int? phoneNumber,
    @JsonKey(name: "cr_id") int? crId,
    @JsonKey(name: "mawthooq_id") int? mwthooqId,
  }) = _TrustRateModel;

  factory TrustRateModel.fromJson(Map<String, dynamic> json) => _$TrustRateModelFromJson(json);
}
