import 'package:flutter_tdd/features/auth/data/models/about_us_item_model/about_us_item_model.dart';
import 'package:flutter_tdd/features/auth/data/models/path_model/path_model.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_type_model/profile_type_model.dart';
import 'package:flutter_tdd/features/auth/data/models/trust_rate_model/trust_rate_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@unfreezed
@immutable
class UserModel with _$UserModel {
  const UserModel._();

  @JsonSerializable(explicitToJson: true)
  factory UserModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "company_name") String? companyName,
    @JsonKey(name: "brand_name") String? brandName,
    @JsonKey(name: "profile_pic") String? profileImage,
    @JsonKey(name: "is_verified") dynamic isVerified,
    @JsonKey(name: "verified_at") String? verifiedAt,
    @JsonKey(name: "aboutus_id") dynamic aboutUsId,
    @JsonKey(name: "mobile_prefix") dynamic mobilePrefix,
    @JsonKey(name: "contact_no") String? phone,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "contactNo") String? contact,
    @JsonKey(name: "referral_code") String? referralCode,
    @JsonKey(name: "profile_type") ProfileTypeModel? profileType,
    @JsonKey(name: "profile_type_id") int? profileTypeId,
    @JsonKey(name: "file_path") PathModel? filePath,
    @JsonKey(name: "aboutus") List<AboutUsItemModel>? aboutUsList,
    @JsonKey(name: "profile_status") dynamic profileStatus,
    @JsonKey(name: "trust_rate") TrustRateModel? trustRate,
    @JsonKey(name: "notifications_enabled") int? notificationsEnabled,
    @JsonKey(name: "favorite_list", defaultValue: [])
    required List<int> favoriteList,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  int? get statusPrivateInfo => profileStatus["private_info"];

}
