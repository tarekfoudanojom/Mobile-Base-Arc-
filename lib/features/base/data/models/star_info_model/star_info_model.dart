import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/data/models/expertise_model/expertise_model.dart';
import 'package:flutter_tdd/features/auth/data/models/percentage_model/percentage_model.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_publicity_model/profile_publicity_model.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_status_model/profile_status_model.dart';
import 'package:flutter_tdd/features/auth/data/models/trust_rate_model/trust_rate_model.dart';
import 'package:flutter_tdd/features/base/data/models/agent_category_model/agent_category_model.dart';
import 'package:flutter_tdd/features/base/data/models/campaign_agent_model/campaign_agent_model.dart';
import 'package:flutter_tdd/features/base/data/models/star_social_platform_model/star_social_platform_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'star_info_model.freezed.dart';
part 'star_info_model.g.dart';

@unfreezed
class StarInfoModel with _$StarInfoModel {
  const StarInfoModel._();

  @JsonSerializable(explicitToJson: true)
  factory StarInfoModel({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'chat_allowed') int? chatAllowed,
    @JsonKey(name: 'generalRank') int? generalRank,
    @JsonKey(name: 'categoryRank') int? categoryRank,
    @JsonKey(name: 'working_experience') int? workingExperience,
    @JsonKey(name: 'workbase') String? workBase,
    @JsonKey(name: 'pay_rate') int? payRate,
    @JsonKey(name: 'referral_code') String? referralCode,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'email_confirmation_date') String? emailConfirmationDate,
    @JsonKey(name: 'profile_status') ProfileStatusModel? profileStatus,
    @JsonKey(name: 'trust_rate') TrustRateModel? trustRate,
    @JsonKey(name: 'profile_type_id') int? profileTypeId,
    @JsonKey(name: 'signup_mode') String? signupMode,
    @JsonKey(name: 'show_message_button') int? showMessageButton,
    @JsonKey(name: 'show_send_offer_button') int? showSendOfferButton,
    @JsonKey(name: 'show_whatsapp') int? showWhatsapp,
    @JsonKey(name: 'gender_public_status') int? genderPublicStatus,
    @JsonKey(name: 'price_range_public_status') int? priceRangePublicStatus,
    @JsonKey(name: 'settings_order') dynamic settingsOrder,
    @JsonKey(name: 'birth_date') dynamic birthDate,
    @JsonKey(name: 'min_price') int? minPrice,
    @JsonKey(name: 'max_price') int? maxPrice,
    @JsonKey(name: 'gender') int? gender,
    @JsonKey(name: 'mawthooq_id') dynamic mawthooqId,
    @JsonKey(name: 'about_me') String? aboutMe,
    @JsonKey(name: 'about_me_en') String? aboutMeEn,
    @JsonKey(name: 'about_me_ar') String? aboutMeAr,
    @JsonKey(name: 'pro_address') String? proAddress,
    @JsonKey(name: 'whatsapp_number') dynamic whatsappNumber,
    @JsonKey(name: 'bussiness_email') String? businessEmail,
    @JsonKey(name: 'cityName') String? cityName,
    @JsonKey(name: 'cityNameAr') String? cityNameAr,
    @JsonKey(name: 'stateName') String? stateName,
    @JsonKey(name: 'stateNameAr') String? stateNameAr,
    @JsonKey(name: 'countryName') String? countryName,
    @JsonKey(name: 'countryNameAr') String? countryNameAr,
    @JsonKey(name: 'show_age') int? showAge,
    @JsonKey(name: 'show_email') int? showEmail,
    @JsonKey(name: 'firebaseLink') String? firebaseLink,
    @JsonKey(name: 'block_status') dynamic? blockStatus,
    @JsonKey(name: 'service_category_id') int? serviceCategoryId,
    @JsonKey(name: 'profile_pic') String? profilePic,
    @JsonKey(name: 'mawthooq_public_status') dynamic mawthooqPublicStatus,
    @JsonKey(name: 'category_public_status') int? categoryPublicStatus,
    @JsonKey(name: 'sc_name_ar') String? scNameAr,
    @JsonKey(name: 'about_me_public_status') dynamic aboutMePublicStatus,
    @JsonKey(name: 'websites') dynamic websites,
    @JsonKey(name: 'contact_no') String? contactNo,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'summaries') dynamic summaries,
    @JsonKey(name: 'sum') dynamic sum,
    @JsonKey(name: 'is_mawthooq_number') dynamic isMawthooqNumber,
    @JsonKey(name: 'count_rating') num? countRating,
    @JsonKey(name: 'real_count') dynamic realCount,
    @JsonKey(name: 'fake_count_review') num? fakeCountReview,
    @JsonKey(name: 'rate') dynamic rate,
    @JsonKey(name: 'resumes') dynamic resumes,
    @JsonKey(name: 'percentage') PercentageModel? percentage,
    @JsonKey(name: 'expertise') ExpertiseModel? expertise,
    @JsonKey(name: 'profile_publicity') ProfilePublicityModel? profilePublicity,
    @JsonKey(name: 'agent_profile_publicity')
    List<ProfilePublicityModel>? agentProfilePublicity,
    @JsonKey(name: 'agent_tags') List<AgentCategoryModel>? agentTags,
    @JsonKey(name: 'agent_categories') List<AgentCategoryModel>? agentCategories,
    @JsonKey(name: 'social_platform')
    List<StarSocialPlatformModel>? socialPlatform,
    @JsonKey(name: 'saved') int? saved,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'resume_path') String? resumePath,
    @JsonKey(name: 'mawthooq_path') String? mawthooqPath,
    @JsonKey(name: 'is_favorite') bool? isFavorite,
    @JsonKey(name: 'is_verified') bool? isVerified,
    @JsonKey(name: "fal_license_number") String? falLicenseNumber,
    @JsonKey(name: "category_score") num? categoryScore,
    @JsonKey(name: "aqs_final_score") num? aqsFinalScore,
    @JsonKey(name: "er_final_score") num? erFinalScore,
    @JsonKey(name: "work_with_score") num? workWithScore,
    @JsonKey(name: "authenticity_final_score") num? authenticityFinalScore,
    @JsonKey(name: "reachability_final_score") num? reachabilityFinalScore,
    @JsonKey(name: "aqs_final_score_platform") String? aqsFinalScorePlatform,
    @JsonKey(name: "er_final_score_platform") String? erFinalScorePlatform,
    @JsonKey(name: "authenticity_final_platform")
    String? authenticityFinalPlatform,
    @JsonKey(name: "reachability_final_platform")
    String? reachabilityFinalPlatform,
    @JsonKey(name: "final_score") num? finalScore,
    @JsonKey(name: 'companies') List<CompaniesModel>? companies,
    @JsonKey(name: 'demographics') AudienceModel? demographics,
  }) = _StarInfoModel;

  factory StarInfoModel.fromJson(Map<String, dynamic> json) =>
      _$StarInfoModelFromJson(json);

  String getTranslatedLocationName({required String? ar, required String? en}) {
    final BuildContext context = getIt<GlobalContext>().context();
    final String lang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == ApplicationConstants.langAR
        ? (ar ?? en ?? "")
        : (en ?? ar ?? "");
  }

  String get getName {
    final BuildContext context = getIt<GlobalContext>().context();
    final String lang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return (lang == ApplicationConstants.langAR
            ? lastName == ""
                ? firstName ?? ""
                : lastName ?? ""
            : firstName ?? "")
        .trim();
  }

  String get getCityName {
    var context = getIt<GlobalContext>().context();
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? cityName : cityNameAr) ?? "";
  }

  String get getCountryName {
    var context = getIt<GlobalContext>().context();
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? countryName : countryNameAr) ?? "";
  }

  String get getUserName {
    var context = getIt<GlobalContext>().context();
    return context.isArabic
        ? (lastName ?? firstName ?? "")
        : (firstName ?? lastName ?? "");
  }

  factory StarInfoModel.fromCampaignAgentModel(CampaignAgentModel model) {
    return StarInfoModel(
      id: model.id,
      username: model.firstName,
      firstName: model.firstName,
      lastName: model.lastName,
      path: model.image?.path,
      profilePic: model.image?.fileName,
      isVerified: model.isVerified,
      mawthooqId: model.mawthooq?.id,
      mawthooqPublicStatus: model.mawthooq?.publicStatus,
      mawthooqPath: model.mawthooq?.data,
      gender: model.gender,
      cityName: model.address?.cityName,
      countryName: model.address?.countryName,
      cityNameAr: model.address?.cityNameAr,
      countryNameAr: model.address?.countryNameAr,
      agentCategories: model.categories?.map((AgentCategoryModel e) {
        return AgentCategoryModel(
          id: e.id,
          name: e.name,
          nameAr: e.nameAr,
        );
      }).toList(),
      // aboutMe: model.aboutMe,
      // aboutMeAr: model.aboutMeAr,
      // aboutMeEn: model.aboutMeEn,
    );
  }


  factory StarInfoModel.fromInfluencerModel(
      CampaignAgentModel model, String path) {
    return StarInfoModel(
      id: model.id,
      username: model.firstName,
      firstName: model.firstName,
      lastName: model.lastName,
      path: model.image?.path,
      profilePic: model.image?.fileName,
      isVerified: model.isVerified,
      // mawthooqId: model.mawthooq?.id,
      // mawthooqPublicStatus: model.mawthooq?.publicStatus,
      // mawthooqPath: model.mawthooq?.data,
      // gender: model.gender,
      cityName: model.address?.cityName,
      countryName: model.address?.countryName,
      cityNameAr: model.address?.cityNameAr,
      countryNameAr: model.address?.countryNameAr,
      // agentCategories: model.categories?.map((AgentCategoryModel e) {
      //   return CatsTagsModel(
      //     id: e.id,
      //     name: e.name,
      //     nameAr: e.nameAr,
      //   );
      // }).toList(),
      // aboutMe: model.aboutMe,
      // aboutMeAr: model.aboutMeAr,
      // aboutMeEn: model.aboutMeEn,
    );
  }


}
