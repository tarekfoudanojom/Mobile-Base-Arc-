// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StarInfoModelImpl _$$StarInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$StarInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      chatAllowed: (json['chat_allowed'] as num?)?.toInt(),
      generalRank: (json['generalRank'] as num?)?.toInt(),
      categoryRank: (json['categoryRank'] as num?)?.toInt(),
      workingExperience: (json['working_experience'] as num?)?.toInt(),
      workBase: json['workbase'] as String?,
      payRate: (json['pay_rate'] as num?)?.toInt(),
      referralCode: json['referral_code'] as String?,
      status: (json['status'] as num?)?.toInt(),
      emailConfirmationDate: json['email_confirmation_date'] as String?,
      profileStatus: json['profile_status'] == null
          ? null
          : ProfileStatusModel.fromJson(
              json['profile_status'] as Map<String, dynamic>),
      trustRate: json['trust_rate'] == null
          ? null
          : TrustRateModel.fromJson(json['trust_rate'] as Map<String, dynamic>),
      profileTypeId: (json['profile_type_id'] as num?)?.toInt(),
      signupMode: json['signup_mode'] as String?,
      showMessageButton: (json['show_message_button'] as num?)?.toInt(),
      showSendOfferButton: (json['show_send_offer_button'] as num?)?.toInt(),
      showWhatsapp: (json['show_whatsapp'] as num?)?.toInt(),
      genderPublicStatus: (json['gender_public_status'] as num?)?.toInt(),
      priceRangePublicStatus:
          (json['price_range_public_status'] as num?)?.toInt(),
      settingsOrder: json['settings_order'],
      birthDate: json['birth_date'],
      minPrice: (json['min_price'] as num?)?.toInt(),
      maxPrice: (json['max_price'] as num?)?.toInt(),
      gender: (json['gender'] as num?)?.toInt(),
      mawthooqId: json['mawthooq_id'],
      aboutMe: json['about_me'] as String?,
      aboutMeEn: json['about_me_en'] as String?,
      aboutMeAr: json['about_me_ar'] as String?,
      proAddress: json['pro_address'] as String?,
      whatsappNumber: json['whatsapp_number'],
      businessEmail: json['bussiness_email'] as String?,
      cityName: json['cityName'] as String?,
      cityNameAr: json['cityNameAr'] as String?,
      stateName: json['stateName'] as String?,
      stateNameAr: json['stateNameAr'] as String?,
      countryName: json['countryName'] as String?,
      countryNameAr: json['countryNameAr'] as String?,
      showAge: (json['show_age'] as num?)?.toInt(),
      showEmail: (json['show_email'] as num?)?.toInt(),
      firebaseLink: json['firebaseLink'] as String?,
      blockStatus: json['block_status'],
      serviceCategoryId: (json['service_category_id'] as num?)?.toInt(),
      profilePic: json['profile_pic'] as String?,
      mawthooqPublicStatus: json['mawthooq_public_status'],
      categoryPublicStatus: (json['category_public_status'] as num?)?.toInt(),
      scNameAr: json['sc_name_ar'] as String?,
      aboutMePublicStatus: json['about_me_public_status'],
      websites: json['websites'],
      contactNo: json['contact_no'] as String?,
      email: json['email'] as String?,
      summaries: json['summaries'],
      sum: json['sum'],
      isMawthooqNumber: json['is_mawthooq_number'],
      countRating: json['count_rating'] as num?,
      realCount: json['real_count'],
      fakeCountReview: json['fake_count_review'] as num?,
      rate: json['rate'],
      resumes: json['resumes'],
      percentage: json['percentage'] == null
          ? null
          : PercentageModel.fromJson(
              json['percentage'] as Map<String, dynamic>),
      expertise: json['expertise'] == null
          ? null
          : ExpertiseModel.fromJson(json['expertise'] as Map<String, dynamic>),
      profilePublicity: json['profile_publicity'] == null
          ? null
          : ProfilePublicityModel.fromJson(
              json['profile_publicity'] as Map<String, dynamic>),
      agentProfilePublicity: (json['agent_profile_publicity'] as List<dynamic>?)
          ?.map(
              (e) => ProfilePublicityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      agentTags: (json['agent_tags'] as List<dynamic>?)
          ?.map((e) => AgentCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      agentCategories: (json['agent_categories'] as List<dynamic>?)
          ?.map((e) => AgentCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      socialPlatform: (json['social_platform'] as List<dynamic>?)
          ?.map((e) =>
              StarSocialPlatformModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      saved: (json['saved'] as num?)?.toInt(),
      path: json['path'] as String?,
      resumePath: json['resume_path'] as String?,
      mawthooqPath: json['mawthooq_path'] as String?,
      isFavorite: json['is_favorite'] as bool?,
      isVerified: json['is_verified'] as bool?,
      falLicenseNumber: json['fal_license_number'] as String?,
      categoryScore: json['category_score'] as num?,
      aqsFinalScore: json['aqs_final_score'] as num?,
      erFinalScore: json['er_final_score'] as num?,
      workWithScore: json['work_with_score'] as num?,
      authenticityFinalScore: json['authenticity_final_score'] as num?,
      reachabilityFinalScore: json['reachability_final_score'] as num?,
      aqsFinalScorePlatform: json['aqs_final_score_platform'] as String?,
      erFinalScorePlatform: json['er_final_score_platform'] as String?,
      authenticityFinalPlatform: json['authenticity_final_platform'] as String?,
      reachabilityFinalPlatform: json['reachability_final_platform'] as String?,
      finalScore: json['final_score'] as num?,
      companies: (json['companies'] as List<dynamic>?)
          ?.map((e) => CompaniesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      demographics: json['demographics'] == null
          ? null
          : AudienceModel.fromJson(
              json['demographics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StarInfoModelImplToJson(_$StarInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'chat_allowed': instance.chatAllowed,
      'generalRank': instance.generalRank,
      'categoryRank': instance.categoryRank,
      'working_experience': instance.workingExperience,
      'workbase': instance.workBase,
      'pay_rate': instance.payRate,
      'referral_code': instance.referralCode,
      'status': instance.status,
      'email_confirmation_date': instance.emailConfirmationDate,
      'profile_status': instance.profileStatus?.toJson(),
      'trust_rate': instance.trustRate?.toJson(),
      'profile_type_id': instance.profileTypeId,
      'signup_mode': instance.signupMode,
      'show_message_button': instance.showMessageButton,
      'show_send_offer_button': instance.showSendOfferButton,
      'show_whatsapp': instance.showWhatsapp,
      'gender_public_status': instance.genderPublicStatus,
      'price_range_public_status': instance.priceRangePublicStatus,
      'settings_order': instance.settingsOrder,
      'birth_date': instance.birthDate,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'gender': instance.gender,
      'mawthooq_id': instance.mawthooqId,
      'about_me': instance.aboutMe,
      'about_me_en': instance.aboutMeEn,
      'about_me_ar': instance.aboutMeAr,
      'pro_address': instance.proAddress,
      'whatsapp_number': instance.whatsappNumber,
      'bussiness_email': instance.businessEmail,
      'cityName': instance.cityName,
      'cityNameAr': instance.cityNameAr,
      'stateName': instance.stateName,
      'stateNameAr': instance.stateNameAr,
      'countryName': instance.countryName,
      'countryNameAr': instance.countryNameAr,
      'show_age': instance.showAge,
      'show_email': instance.showEmail,
      'firebaseLink': instance.firebaseLink,
      'block_status': instance.blockStatus,
      'service_category_id': instance.serviceCategoryId,
      'profile_pic': instance.profilePic,
      'mawthooq_public_status': instance.mawthooqPublicStatus,
      'category_public_status': instance.categoryPublicStatus,
      'sc_name_ar': instance.scNameAr,
      'about_me_public_status': instance.aboutMePublicStatus,
      'websites': instance.websites,
      'contact_no': instance.contactNo,
      'email': instance.email,
      'summaries': instance.summaries,
      'sum': instance.sum,
      'is_mawthooq_number': instance.isMawthooqNumber,
      'count_rating': instance.countRating,
      'real_count': instance.realCount,
      'fake_count_review': instance.fakeCountReview,
      'rate': instance.rate,
      'resumes': instance.resumes,
      'percentage': instance.percentage?.toJson(),
      'expertise': instance.expertise?.toJson(),
      'profile_publicity': instance.profilePublicity?.toJson(),
      'agent_profile_publicity':
          instance.agentProfilePublicity?.map((e) => e.toJson()).toList(),
      'agent_tags': instance.agentTags?.map((e) => e.toJson()).toList(),
      'agent_categories':
          instance.agentCategories?.map((e) => e.toJson()).toList(),
      'social_platform':
          instance.socialPlatform?.map((e) => e.toJson()).toList(),
      'saved': instance.saved,
      'path': instance.path,
      'resume_path': instance.resumePath,
      'mawthooq_path': instance.mawthooqPath,
      'is_favorite': instance.isFavorite,
      'is_verified': instance.isVerified,
      'fal_license_number': instance.falLicenseNumber,
      'category_score': instance.categoryScore,
      'aqs_final_score': instance.aqsFinalScore,
      'er_final_score': instance.erFinalScore,
      'work_with_score': instance.workWithScore,
      'authenticity_final_score': instance.authenticityFinalScore,
      'reachability_final_score': instance.reachabilityFinalScore,
      'aqs_final_score_platform': instance.aqsFinalScorePlatform,
      'er_final_score_platform': instance.erFinalScorePlatform,
      'authenticity_final_platform': instance.authenticityFinalPlatform,
      'reachability_final_platform': instance.reachabilityFinalPlatform,
      'final_score': instance.finalScore,
      'companies': instance.companies?.map((e) => e.toJson()).toList(),
      'demographics': instance.demographics?.toJson(),
    };
