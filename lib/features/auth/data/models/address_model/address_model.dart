import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel{
  const AddressModel._();
  @JsonSerializable(explicitToJson: true)
  factory AddressModel({
    required int id,
    @JsonKey(name: 'profile_id') required int profileId,
    String? country,
    String? region,
    String? city,
    double? longitude,
    double? latitude,
    @JsonKey(name: 'pro_address') String? proAddress,
    required dynamic timestamp,
    required int status,
    @JsonKey(name: 'countryID') required int countryId,
    @JsonKey(name: 'cityID')  int? cityId,
    @JsonKey(name: 'stateID')  int? stateId,
  }) = _AddressModel;


  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}