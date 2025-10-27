import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/auth/data/models/about_us_item_model/about_us_item_model.dart';
import 'package:flutter_tdd/features/auth/data/models/brand_percentage_model/brand_percentage_model.dart';
import 'package:flutter_tdd/features/auth/data/models/path_model/path_model.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_status_model/profile_status_model.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_type_model/profile_type_model.dart';
import 'package:flutter_tdd/features/auth/data/models/trust_rate_model/trust_rate_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@unfreezed
class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  @JsonSerializable(explicitToJson: true)
  factory ProfileModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "is_team_member") int? isTeamMember,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "profile_pic") String? profileImage,
    @JsonKey(name: "contact_no") String? phone,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "contactNo") String? contact,
    @JsonKey(name: "referral_code") String? referralCode,
    @JsonKey(name: "profile_type") ProfileTypeModel? profileType,
    @JsonKey(name: "profile_type_id") int? profileTypeId,
    @JsonKey(name: "file_path") PathModel? filePath,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "aboutus") List<AboutUsItemModel>? aboutUsList,
    @JsonKey(name: "profile_status") ProfileStatusModel? profileStatus,
    @JsonKey(name: "trust_rate") TrustRateModel? trustRate,
    @JsonKey(name: "delegation_fee_rate") double? delegationFeeRate,
    @JsonKey(name: "cityID") int? cityId,
    @JsonKey(name: "stateID") int? stateId,
    @JsonKey(name: "countryID") int? countryId,
    @JsonKey(name: "cityName") String? cityName,
    @JsonKey(name: "client_balance") num? clientBalance,
    // @JsonKey(name: "client_survey") String? clientSurvey,
    @JsonKey(name: "working_experience") int? workingExperience,
    @JsonKey(name: "workbase") String? workBase,
    @JsonKey(name: "email_confirmation_date") String? emailConfirmationDate,
    @JsonKey(name: "company_name") String? companyName,
    @JsonKey(name: "brand_name") String? brandName,
    @JsonKey(name: "aboutus_id") int? aboutUsId,
    @JsonKey(name: "other_aboutus") String? otherAboutUs,
    @JsonKey(name: "is_verified", defaultValue: 0) required int isVerified,
    @JsonKey(name: "verified_at", defaultValue: "") String? verifiedAt,
    @JsonKey(name: "commercial_registration_id") int? commercialRegistrationId,
    @JsonKey(name: "cr_number") String? crNumber,
    @JsonKey(name: "cr_file") String? crFile,
    @JsonKey(name: "cr_status") int? crStatus,
    @JsonKey(name: "vat_registration_id") int? vatRegistrationId,
    @JsonKey(name: "vat_number") String? vatNumber,
    @JsonKey(name: "vat_file") String? vatFile,
    @JsonKey(name: "vat_status") int? vatStatus,
    @JsonKey(name: "count_rating") num? countRating,
    @JsonKey(name: "rate") double? rate,
    @JsonKey(name: "notifications_enabled") int? notificationsEnabled,
    BrandPercentageModel? percentage,
    String? stateName,
    String? website,
    String? cityNameAr,
    String? stateNameAr,
    String? countryName,
    String? countryNameAr,
    String? country,
    String? region,
    String? city,
    double? longitude,
    double? latitude,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  String get getCityName {
    var context = getIt<GlobalContext>().context();
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? cityName : cityNameAr) ?? city ?? "";
  }

  String get getStateName {
    var context = getIt<GlobalContext>().context();
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? stateName : stateNameAr) ?? "";
  }

  String get getCountryName {
    var context = getIt<GlobalContext>().context();
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? countryName : countryNameAr) ?? country ?? "";
  }

  String get getName {
    var context = getIt<GlobalContext>().context();
    return (context.isArabic ? lastName ?? firstName : firstName ?? lastName) ??
        "";
  }

  String get getConcatenatedName {
    return "${firstName ?? ""} ${lastName ?? ""}";
  }

  bool get isTeamMemberUser {
    return isTeamMember == 1 ? true : false;
  }

  bool get isFirstMonthService {
    // verifiedAt = "2025-09-09T00:00:00.000Z";
    if ((verifiedAt ?? "").isEmpty) return false;
    DateTime givenDate = DateTime.parse(verifiedAt ?? "");
    DateTime now = DateTime.now();
    int daysDifference = now.difference(givenDate).inDays;
    return daysDifference > 30 ? false : true;
  }

  int get remainingDays {
    if ((verifiedAt ?? "").isEmpty) return 0;
    DateTime givenDate = DateTime.parse(verifiedAt ?? "");
    DateTime now = DateTime.now();
    int daysDifference = now.difference(givenDate).inDays;
    int result = 30 - daysDifference;
    if (result > 30) {
      result = 0;
    }
    return result;
  }

  String getRemainingTimeInDay(bool isArabic) {
    final now = DateTime.now();
    final endOfDay =
        DateTime(now.year, now.month, now.day, 23, 59, 59); // include seconds
    final remaining = endOfDay.difference(now);

    final hours = remaining.inHours;
    final minutes = remaining.inMinutes.remainder(60) + 1; // better than % 60

    return isArabic
        ? '${hours}س ${minutes}د متبقية'
        : '${hours}h ${minutes}m remaining';
  }
}

@freezed
class MawthooqStatusModel with _$MawthooqStatusModel {
  const MawthooqStatusModel._();

  @JsonSerializable(explicitToJson: true)
  factory MawthooqStatusModel({
    required int id,
    required int type,
    required DateTime timestamp,
    required String data,
    required String status,
    @JsonKey(name: "profile_id") required int profileId,
    @JsonKey(name: "is_number") required String isNumber,
    @JsonKey(name: "public_status") required int publicStatus,
    @JsonKey(name: "issue_date") required dynamic issueDate,
    @JsonKey(name: "expiry_date") required dynamic expiryDate,
  }) = _MawthooqStatusModel;

  factory MawthooqStatusModel.fromJson(Map<String, dynamic> json) =>
      _$MawthooqStatusModelFromJson(json);
}
