// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_agent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignAgentModelImpl _$$CampaignAgentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignAgentModelImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      isFavorite: json['is_favorite'] as bool? ?? true,
      isVerified: json['is_verified'] as bool?,
      isDraftStar: json['is_draft_star'] as bool?,
      aqsFinalScorePlatform: json['aqs_final_score_platform'] as String?,
      erFinalScorePlatform: json['er_final_score_platform'] as String?,
      authenticityFinalPlatform: json['authenticity_final_platform'] as String?,
      reachabilityFinalPlatform: json['reachability_final_platform'] as String?,
      finalScore: json['final_score'] as num?,
      gender: (json['gender'] as num?)?.toInt(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => AgentCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      servicesPrice: (json['services_price'] as num?)?.toDouble() ?? 0.0,
      txtController: json['txtController'],
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => AgentCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => AgentCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      addressModel: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      mawthooq: json['mawthooq'] == null
          ? null
          : MawthooqModel.fromJson(json['mawthooq'] as Map<String, dynamic>),
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      minPrice: json['min_price'] as num?,
      maxPrice: json['max_price'] as num?,
      companies: (json['companies'] as List<dynamic>?)
          ?.map((e) => CompaniesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      demographics: json['demographics'] == null
          ? null
          : AudienceModel.fromJson(
              json['demographics'] as Map<String, dynamic>),
      socialPlatforms: (json['social_platforms'] as List<dynamic>?)
          ?.map((e) =>
              StarSocialPlatformModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String? ?? "",
      finalErMarkEn: json['final_er_mark_en'] as String?,
      finalErMarkAr: json['final_er_mark_ar'] as String?,
      finalErDescriptionEn: json['final_er_description_en'] as String?,
      finalErDescriptionAr: json['final_er_description_ar'] as String?,
      finalAqsMarkEn: json['final_aqs_mark_en'] as String?,
      finalAqsMarkAr: json['final_aqs_mark_ar'] as String?,
      finalAuthenticityMarkEn: json['final_authenticity_mark_en'] as String?,
      finalAuthenticityMarkAr: json['final_authenticity_mark_ar'] as String?,
      finalAuthenticityDescriptionEn:
          json['final_authenticity_description_en'] as String?,
      finalAuthenticityDescriptionAr:
          json['final_authenticity_description_ar'] as String?,
      finalReachabilityMarkEn: json['final_reachability_mark_en'] as String?,
      finalReachabilityMarkAr: json['final_reachability_mark_ar'] as String?,
      finalReachabilityDescriptionEn:
          json['final_reachability_description_en'] as String?,
      finalReachabilityDescriptionAr:
          json['final_reachability_description_ar'] as String?,
      finalAudienceReal: (json['final_audience_real'] as num?)?.toDouble(),
      finalAudienceSusp: (json['final_audience_susp'] as num?)?.toDouble(),
      finalAudienceInfs: (json['final_audience_infs'] as num?)?.toDouble(),
      finalAudienceMass: (json['final_audience_mass'] as num?)?.toDouble(),
      categoryScorePercentage:
          (json['category_score_percentage'] as num?)?.toDouble(),
      workWithScorePercentage:
          (json['work_with_score_percentage'] as num?)?.toDouble(),
      aqsScorePercentage: (json['aqs_score_percentage'] as num?)?.toDouble(),
      authenticityScorePercentage:
          (json['authenticity_score_percentage'] as num?)?.toDouble(),
      erScorePercentage: (json['er_score_percentage'] as num?)?.toDouble(),
      reachabilityScorePercentage:
          (json['reachability_score_percentage'] as num?)?.toDouble(),
      aqsFinalScore: json['aqs_final_score'] as num?,
      erFinalScore: (json['er_final_score'] as num?)?.toDouble(),
      authenticityFinalScore: json['authenticity_final_score'] as num?,
      reachabilityFinalScore: json['reachability_final_score'] as num?,
      categoryScore: json['category_score'] as num?,
      workWithScore: json['work_with_score'] as num?,
      selected: json['selected'] as bool?,
      img: json['img'] as String?,
      cityId: (json['cityID'] as num?)?.toInt(),
      stateId: (json['stateID'] as num?)?.toInt(),
      cityName: json['cityName'] as String?,
      countryId: (json['countryID'] as num?)?.toInt(),
      stateName: json['stateName'] as String?,
      cityNameAr: json['cityNameAr'] as String?,
      countryName: json['countryName'] as String?,
      stateNameAr: json['stateNameAr'] as String?,
      countryNameAr: json['countryNameAr'] as String?,
    );

Map<String, dynamic> _$$CampaignAgentModelImplToJson(
        _$CampaignAgentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image?.toJson(),
      'is_favorite': instance.isFavorite,
      'is_verified': instance.isVerified,
      'is_draft_star': instance.isDraftStar,
      'aqs_final_score_platform': instance.aqsFinalScorePlatform,
      'er_final_score_platform': instance.erFinalScorePlatform,
      'authenticity_final_platform': instance.authenticityFinalPlatform,
      'reachability_final_platform': instance.reachabilityFinalPlatform,
      'final_score': instance.finalScore,
      'gender': instance.gender,
      'services': instance.services?.map((e) => e.toJson()).toList(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'services_price': instance.servicesPrice,
      'txtController': instance.txtController,
      'tags': instance.tags?.map((e) => e.toJson()).toList(),
      'skills': instance.skills?.map((e) => e.toJson()).toList(),
      'address': instance.addressModel?.toJson(),
      'mawthooq': instance.mawthooq?.toJson(),
      'birth_date': instance.birthDate?.toIso8601String(),
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'companies': instance.companies?.map((e) => e.toJson()).toList(),
      'demographics': instance.demographics?.toJson(),
      'social_platforms':
          instance.socialPlatforms?.map((e) => e.toJson()).toList(),
      'note': instance.note,
      'final_er_mark_en': instance.finalErMarkEn,
      'final_er_mark_ar': instance.finalErMarkAr,
      'final_er_description_en': instance.finalErDescriptionEn,
      'final_er_description_ar': instance.finalErDescriptionAr,
      'final_aqs_mark_en': instance.finalAqsMarkEn,
      'final_aqs_mark_ar': instance.finalAqsMarkAr,
      'final_authenticity_mark_en': instance.finalAuthenticityMarkEn,
      'final_authenticity_mark_ar': instance.finalAuthenticityMarkAr,
      'final_authenticity_description_en':
          instance.finalAuthenticityDescriptionEn,
      'final_authenticity_description_ar':
          instance.finalAuthenticityDescriptionAr,
      'final_reachability_mark_en': instance.finalReachabilityMarkEn,
      'final_reachability_mark_ar': instance.finalReachabilityMarkAr,
      'final_reachability_description_en':
          instance.finalReachabilityDescriptionEn,
      'final_reachability_description_ar':
          instance.finalReachabilityDescriptionAr,
      'final_audience_real': instance.finalAudienceReal,
      'final_audience_susp': instance.finalAudienceSusp,
      'final_audience_infs': instance.finalAudienceInfs,
      'final_audience_mass': instance.finalAudienceMass,
      'category_score_percentage': instance.categoryScorePercentage,
      'work_with_score_percentage': instance.workWithScorePercentage,
      'aqs_score_percentage': instance.aqsScorePercentage,
      'authenticity_score_percentage': instance.authenticityScorePercentage,
      'er_score_percentage': instance.erScorePercentage,
      'reachability_score_percentage': instance.reachabilityScorePercentage,
      'aqs_final_score': instance.aqsFinalScore,
      'er_final_score': instance.erFinalScore,
      'authenticity_final_score': instance.authenticityFinalScore,
      'reachability_final_score': instance.reachabilityFinalScore,
      'category_score': instance.categoryScore,
      'work_with_score': instance.workWithScore,
      'selected': instance.selected,
      'img': instance.img,
      'cityID': instance.cityId,
      'stateID': instance.stateId,
      'cityName': instance.cityName,
      'countryID': instance.countryId,
      'stateName': instance.stateName,
      'cityNameAr': instance.cityNameAr,
      'countryName': instance.countryName,
      'stateNameAr': instance.stateNameAr,
      'countryNameAr': instance.countryNameAr,
    };

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      cityId: (json['cityID'] as num?)?.toInt(),
      stateId: (json['stateID'] as num?)?.toInt(),
      cityName: json['cityName'] as String?,
      countryId: (json['countryID'] as num?)?.toInt(),
      stateName: json['stateName'] as String?,
      cityNameAr: json['cityNameAr'] as String?,
      countryName: json['countryName'] as String?,
      stateNameAr: json['stateNameAr'] as String?,
      countryNameAr: json['countryNameAr'] as String?,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'cityID': instance.cityId,
      'stateID': instance.stateId,
      'cityName': instance.cityName,
      'countryID': instance.countryId,
      'stateName': instance.stateName,
      'cityNameAr': instance.cityNameAr,
      'countryName': instance.countryName,
      'stateNameAr': instance.stateNameAr,
      'countryNameAr': instance.countryNameAr,
    };

_$MawthooqModelImpl _$$MawthooqModelImplFromJson(Map<String, dynamic> json) =>
    _$MawthooqModelImpl(
      id: (json['id'] as num?)?.toInt(),
      data: json['data'] as String?,
      status: json['status'] as String?,
      publicStatus: (json['public_status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MawthooqModelImplToJson(_$MawthooqModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'status': instance.status,
      'public_status': instance.publicStatus,
    };

_$CompaniesModelImpl _$$CompaniesModelImplFromJson(Map<String, dynamic> json) =>
    _$CompaniesModelImpl(
      id: (json['id'] as num?)?.toInt(),
      companyId: (json['company_id'] as num?)?.toInt(),
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toInt())
          .toList(),
      relevantCategoryCount:
          (json['relevant_category_count'] as num?)?.toInt() ?? 0,
      times: (json['times'] as num?)?.toInt() ?? 0,
      link: json['link'] as String?,
      name: json['name'] as String?,
      nameAr: json['name_ar'] as String?,
      filename: json['filename'] as String?,
      displayOrder: (json['display_order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CompaniesModelImplToJson(
        _$CompaniesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'category_ids': instance.categoryIds,
      'relevant_category_count': instance.relevantCategoryCount,
      'times': instance.times,
      'link': instance.link,
      'name': instance.name,
      'name_ar': instance.nameAr,
      'filename': instance.filename,
      'display_order': instance.displayOrder,
    };

_$AudienceModelImpl _$$AudienceModelImplFromJson(Map<String, dynamic> json) =>
    _$AudienceModelImpl(
      ageGroup: json['age_group'] == null
          ? null
          : AgeGroup.fromJson(json['age_group'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      geography: (json['geography'] as List<dynamic>?)
          ?.map((e) => Geography.fromJson(e as Map<String, dynamic>))
          .toList(),
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AudienceModelImplToJson(_$AudienceModelImpl instance) =>
    <String, dynamic>{
      'age_group': instance.ageGroup,
      'gender': instance.gender,
      'geography': instance.geography,
      'cities': instance.cities,
    };

_$AgeGroupImpl _$$AgeGroupImplFromJson(Map<String, dynamic> json) =>
    _$AgeGroupImpl(
      age13to17: (json['age13-17'] as num?)?.toDouble(),
      age18to24: (json['age18-24'] as num?)?.toDouble(),
      age25to34: (json['age25-34'] as num?)?.toDouble(),
      age35plus: (json['age35-'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AgeGroupImplToJson(_$AgeGroupImpl instance) =>
    <String, dynamic>{
      'age13-17': instance.age13to17,
      'age18-24': instance.age18to24,
      'age25-34': instance.age25to34,
      'age35-': instance.age35plus,
    };

_$GenderImpl _$$GenderImplFromJson(Map<String, dynamic> json) => _$GenderImpl(
      male: (json['male'] as num?)?.toDouble(),
      female: (json['female'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GenderImplToJson(_$GenderImpl instance) =>
    <String, dynamic>{
      'male': instance.male,
      'female': instance.female,
    };

_$GeographyImpl _$$GeographyImplFromJson(Map<String, dynamic> json) =>
    _$GeographyImpl(
      name: json['name'] == null
          ? null
          : LocalizedName.fromJson(json['name'] as Map<String, dynamic>),
      percentage: (json['percentage'] as num?)?.toDouble(),
      code: json['code'] as String?,
      flag: json['flag'] as String?,
    );

Map<String, dynamic> _$$GeographyImplToJson(_$GeographyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'percentage': instance.percentage,
      'code': instance.code,
      'flag': instance.flag,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      percentage: (json['percentage'] as num?)?.toDouble(),
      name: json['name'] == null
          ? null
          : LocalizedName.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'percentage': instance.percentage,
      'name': instance.name,
    };

_$LocalizedNameImpl _$$LocalizedNameImplFromJson(Map<String, dynamic> json) =>
    _$LocalizedNameImpl(
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$LocalizedNameImplToJson(_$LocalizedNameImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };
