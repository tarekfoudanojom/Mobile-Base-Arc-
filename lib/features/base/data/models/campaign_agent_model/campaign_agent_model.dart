import 'package:collection/collection.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/base/data/models/agent_category_model/agent_category_model.dart';
import 'package:flutter_tdd/features/base/data/models/service_model/service_model.dart';
import 'package:flutter_tdd/features/base/data/models/star_social_platform_model/star_social_platform_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../image_model/image_model.dart';

part 'campaign_agent_model.freezed.dart';

part 'campaign_agent_model.g.dart';

@unfreezed
@immutable
class CampaignAgentModel with _$CampaignAgentModel {
  CampaignAgentModel._();

  @JsonSerializable(explicitToJson: true)
  factory CampaignAgentModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "image") ImageModel? image,
    @JsonKey(name: "is_favorite", defaultValue: true) required bool isFavorite,
    @JsonKey(name: "is_verified") bool? isVerified,
    @JsonKey(name: "is_draft_star") bool? isDraftStar,
    @JsonKey(name: "aqs_final_score_platform") String? aqsFinalScorePlatform,
    @JsonKey(name: "er_final_score_platform") String? erFinalScorePlatform,
    @JsonKey(name: "authenticity_final_platform") String? authenticityFinalPlatform,
    @JsonKey(name: "reachability_final_platform") String? reachabilityFinalPlatform,
    @JsonKey(name: "final_score") num? finalScore,
    @JsonKey(name: "gender") int? gender,
    @JsonKey(name: "services") List<BrandServiceModel>? services,
    @JsonKey(name: "categories") List<AgentCategoryModel>? categories,
    @JsonKey(name: "services_price", defaultValue: 0.0) required double servicesPrice,
    @JsonKey(name: "txtController") dynamic txtController,
    @JsonKey(name: 'tags') List<AgentCategoryModel>? tags,
    @JsonKey(name: 'skills') List<AgentCategoryModel>? skills,
    @JsonKey(name: 'address') AddressModel? addressModel,
    @JsonKey(name: 'mawthooq') MawthooqModel? mawthooq,
    @JsonKey(name: 'birth_date') DateTime? birthDate,
    @JsonKey(name: "min_price") num? minPrice,
    @JsonKey(name: "max_price") num? maxPrice,
    @JsonKey(name: 'companies') List<CompaniesModel>? companies,
    @JsonKey(name: 'demographics') AudienceModel? demographics,
    // @JsonKey(name: 'social_platform') List<StarSocialPlatformModel>? socialPlatform,
    @JsonKey(name: 'social_platforms') List<StarSocialPlatformModel>? socialPlatforms,
    @Default("") String? note,

    // ER (Engagement Rate) fields
    @JsonKey(name: "final_er_mark_en") String? finalErMarkEn,
    @JsonKey(name: "final_er_mark_ar") String? finalErMarkAr,
    @JsonKey(name: "final_er_description_en") String? finalErDescriptionEn,
    @JsonKey(name: "final_er_description_ar") String? finalErDescriptionAr,

// AQS (Audience Quality Score) fields
    @JsonKey(name: "final_aqs_mark_en") String? finalAqsMarkEn,
    @JsonKey(name: "final_aqs_mark_ar") String? finalAqsMarkAr,

// Authenticity fields
    @JsonKey(name: "final_authenticity_mark_en") String? finalAuthenticityMarkEn,
    @JsonKey(name: "final_authenticity_mark_ar") String? finalAuthenticityMarkAr,
    @JsonKey(name: "final_authenticity_description_en") String? finalAuthenticityDescriptionEn,
    @JsonKey(name: "final_authenticity_description_ar") String? finalAuthenticityDescriptionAr,

// Reachability fields
    @JsonKey(name: "final_reachability_mark_en") String? finalReachabilityMarkEn,
    @JsonKey(name: "final_reachability_mark_ar") String? finalReachabilityMarkAr,
    @JsonKey(name: "final_reachability_description_en") String? finalReachabilityDescriptionEn,
    @JsonKey(name: "final_reachability_description_ar") String? finalReachabilityDescriptionAr,

// Audience breakdown
    @JsonKey(name: "final_audience_real") double? finalAudienceReal,
    @JsonKey(name: "final_audience_susp") double? finalAudienceSusp,
    @JsonKey(name: "final_audience_infs") double? finalAudienceInfs,
    @JsonKey(name: "final_audience_mass") double? finalAudienceMass,

// Score percentages
    @JsonKey(name: "category_score_percentage") double? categoryScorePercentage,
    @JsonKey(name: "work_with_score_percentage") double? workWithScorePercentage,
    @JsonKey(name: "aqs_score_percentage") double? aqsScorePercentage,
    @JsonKey(name: "authenticity_score_percentage") double? authenticityScorePercentage,
    @JsonKey(name: "er_score_percentage") double? erScorePercentage,
    @JsonKey(name: "reachability_score_percentage") double? reachabilityScorePercentage,

// Final scores
    @JsonKey(name: "aqs_final_score") num? aqsFinalScore,
    @JsonKey(name: "er_final_score") double? erFinalScore,
    @JsonKey(name: "authenticity_final_score") num? authenticityFinalScore,
    @JsonKey(name: "reachability_final_score") num? reachabilityFinalScore,

// Base scores
    @JsonKey(name: "category_score") num? categoryScore,
    @JsonKey(name: "work_with_score") num? workWithScore,
    @JsonKey(name: "selected") bool? selected,
    @JsonKey(name: "img") String? img,
    @JsonKey(name: 'cityID') int? cityId,
    @JsonKey(name: 'stateID') int? stateId,
    @JsonKey(name: 'cityName') String? cityName,
    @JsonKey(name: 'countryID') int? countryId,
    @JsonKey(name: 'stateName') String? stateName,
    @JsonKey(name: 'cityNameAr') String? cityNameAr,
    @JsonKey(name: 'countryName') String? countryName,
    @JsonKey(name: 'stateNameAr') String? stateNameAr,
    @JsonKey(name: 'countryNameAr') String? countryNameAr,
  }) = _CampaignAgentModel;

  final ObsValue<SmartButtonState> workWithLoadingButtonObj =
      ObsValue<SmartButtonState>.withInit(SmartButtonState.active);

  factory CampaignAgentModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignAgentModelFromJson(json);

  AddressModel get address {
    return addressModel ??
        AddressModel(
          cityId: cityId,
          stateId: stateId,
          cityName: cityName,
          countryId: countryId,
          stateName: stateName,
          cityNameAr: cityNameAr,
          countryName: countryName,
          stateNameAr: stateNameAr,
          countryNameAr: countryNameAr,
        );
  }

  String formattedTotalPrice(double totalPrice) {
    final int orderTotalPrice = totalPrice.ceil();
    final formatter = NumberFormat.decimalPattern();
    return formatter.format(orderTotalPrice);
  }

  String get getStarName {
    BuildContext context = getIt<GlobalContext>().context();
    if (context.isArabic) {
      return lastName ?? firstName ?? "";
    } else {
      return firstName ?? lastName ?? "";
    }
  }

  String get getMinPrice {
    if (services != null && services!.isNotEmpty) {
      final minPrice = services?.map((e) => e.price).min; // from collection package
      final formatter = NumberFormat.decimalPattern();
      return formatter.format(minPrice);
    } else {
      return "";
    }
  }

  String get getMaxPrice {
    if (services != null && (services ?? []).isNotEmpty) {
      return services?.map((e) => e.price).max.toStringAsFixed(0) ?? "";
    } else {
      return "";
    }
  }

  String get getMaxFollowersNumber {
    if (services != null && (services ?? []).isNotEmpty) {
      return services?.map((e) => (e.followers ?? 0.0).toDouble()).max.toStringAsFixed(0) ?? "";
    } else {
      return "";
    }
  }

  String get getMinFollowersNumber {
    if (services != null && (services ?? []).isNotEmpty) {
      return services?.map((e) => (e.followers ?? 0.0).toDouble()).min.toStringAsFixed(0) ?? "";
    } else {
      return "";
    }
  }

  BrandServiceModel? getHighestDiscountService() {
    if (services == null || services?.isEmpty == true) return null;
    // Step 1: Find the max discountRate
    double? maxRate =
        services?.map((s) => s.discountRate).reduce((a, b) => (a ?? 0.0) > (b ?? 0.0) ? a : b);
    // Step 2: Return the first service with that rate
    return services?.firstWhereOrNull((s) => s.discountRate == maxRate);
  }

  String joinedSkills(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == ApplicationConstants.langEN) {
      return skills?.map((e) => e.name).join(", ") ?? tags?.map((e) => e.name).join(", ") ?? "";
    }
    return skills?.map((e) => e.nameAr).join(", ") ?? tags?.map((e) => e.nameAr).join(", ") ?? "";
  }

  String joinedCategories(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == ApplicationConstants.langEN) {
      return categories?.map((e) => e.name).join(", ") ?? "";
    }
    return categories?.map((e) => e.nameAr).join(", ") ?? "";
  }
}

@unfreezed
@immutable
class AddressModel with _$AddressModel {
  AddressModel._();

  factory AddressModel({
    @JsonKey(name: 'cityID') required int? cityId,
    @JsonKey(name: 'stateID') required int? stateId,
    @JsonKey(name: 'cityName') required String? cityName,
    @JsonKey(name: 'countryID') required int? countryId,
    @JsonKey(name: 'stateName') required String? stateName,
    @JsonKey(name: 'cityNameAr') required String? cityNameAr,
    @JsonKey(name: 'countryName') required String? countryName,
    @JsonKey(name: 'stateNameAr') required String? stateNameAr,
    @JsonKey(name: 'countryNameAr') required String? countryNameAr,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);

  String? get getAddress {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == ApplicationConstants.langAR) {
      if (cityNameAr == null || countryNameAr == null) {
        return null;
      }
      return "$cityNameAr , $countryNameAr";
    }
    if (cityName == null || countryName == null) {
      return null;
    }
    return "$cityName , $countryName";
  }
}

@freezed
class MawthooqModel with _$MawthooqModel {
  const MawthooqModel._();

  const factory MawthooqModel({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'data') required String? data,
    @JsonKey(name: 'status') required String? status,
    @JsonKey(name: 'public_status') required int? publicStatus,
  }) = _MawthooqModel;

  factory MawthooqModel.fromJson(Map<String, dynamic> json) => _$MawthooqModelFromJson(json);
}

@freezed
class CompaniesModel with _$CompaniesModel {
  const CompaniesModel._();

  const factory CompaniesModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'category_ids') List<int?>? categoryIds,
    @JsonKey(name: 'relevant_category_count', defaultValue: 0) required int relevantCategoryCount,
    @JsonKey(name: 'times', defaultValue: 0) required int times,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'filename') String? filename,
    // @JsonKey(name: 'campaign_date') String? campaignDate,
    @JsonKey(name: 'display_order') int? displayOrder,
  }) = _CompaniesModel;

  factory CompaniesModel.fromJson(Map<String, dynamic> json) => _$CompaniesModelFromJson(json);
}

@freezed
class AudienceModel with _$AudienceModel {
  const AudienceModel._();

  const factory AudienceModel({
    @JsonKey(name: 'age_group') AgeGroup? ageGroup,
    @JsonKey(name: 'gender') Gender? gender,
    @JsonKey(name: 'geography') List<Geography>? geography,
    @JsonKey(name: 'cities') List<City>? cities,
  }) = _AudienceModel;

  factory AudienceModel.fromJson(Map<String, dynamic> json) => _$AudienceModelFromJson(json);
}

@unfreezed
@immutable
class AgeGroup with _$AgeGroup {
  AgeGroup._();

  factory AgeGroup({
    @JsonKey(name: 'age13-17') double? age13to17,
    @JsonKey(name: 'age18-24') double? age18to24,
    @JsonKey(name: 'age25-34') double? age25to34,
    @JsonKey(name: 'age35-') double? age35plus,
  }) = _AgeGroup;

  factory AgeGroup.fromJson(Map<String, dynamic> json) => _$AgeGroupFromJson(json);

  // Get the age group with the highest percentage
  String get tobTitle {
    Map<String, double?> ageMap = {
      '13-17': age13to17,
      '18-24': age18to24,
      '25-34': age25to34,
      '35+': age35plus,
    };
    var maxEntry = ageMap.entries.reduce((a, b) => (a.value ?? 0) > (b.value ?? 0) ? a : b);
    return maxEntry.key;
  }

  double get topPercentage {
    Map<String, double?> ageMap = {
      '13-17': age13to17,
      '18-24': age18to24,
      '25-34': age25to34,
      '35+': age35plus,
    };
    var maxEntry = ageMap.entries.reduce((a, b) => (a.value ?? 0) > (b.value ?? 0) ? a : b);
    return maxEntry.value ?? 0.0;
  }

  // sort items and return list of age groups with non-null values
  List<MapEntry<String, double>> sortedAgeGroups() {
    Map<String, double?> ageMap = {
      '13-17': age13to17,
      '18-24': age18to24,
      '25-34': age25to34,
      '35+': age35plus,
    };
    var nonNullEntries = ageMap.entries
        .where((entry) => entry.value != null)
        .map((entry) => MapEntry(entry.key, entry.value!))
        .toList();
    nonNullEntries.sort((a, b) => b.value.compareTo(a.value));
    print("=========> sortedAgeGroups: $nonNullEntries");
    return nonNullEntries;
  }
}

@freezed
class Gender with _$Gender {
  const Gender._();

  const factory Gender({
    @JsonKey(name: 'male') double? male,
    @JsonKey(name: 'female') double? female,
  }) = _Gender;

  factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);
}

@freezed
class Geography with _$Geography {
  const Geography._();

  const factory Geography({
    @JsonKey(name: 'name') LocalizedName? name,
    @JsonKey(name: 'percentage') double? percentage,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'flag') String? flag,
  }) = _Geography;

  factory Geography.fromJson(Map<String, dynamic> json) => _$GeographyFromJson(json);
}

@freezed
class City with _$City {
  const City._();

  const factory City({
    @JsonKey(name: 'percentage') double? percentage,
    @JsonKey(name: 'name') LocalizedName? name,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@unfreezed
@immutable
class LocalizedName with _$LocalizedName {
  LocalizedName._();

  factory LocalizedName({
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'ar') String? ar,
  }) = _LocalizedName;

  factory LocalizedName.fromJson(Map<String, dynamic> json) => _$LocalizedNameFromJson(json);

  String getName(BuildContext context) {
    return context.isArabic ? (ar ?? "") : (en ?? "");
  }
}
