// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandCampaignModelImpl _$$BrandCampaignModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandCampaignModelImpl(
      services: (json['services'] as List<dynamic>)
          .map((e) =>
              BrandCampaignServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      progress: (json['progress'] as num).toInt(),
      type: json['type'] as String,
      currency: json['currency'] as String,
      subtotal: json['subtotal'] as num,
      profiles: (json['profiles'] as List<dynamic>)
          .map((e) => CampaignProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeline: (json['timeline'] as List<dynamic>?)
          ?.map((e) => TimeLineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      isSelected: json['isSelected'] as bool?,
      draftStars: (json['draft_stars'] as List<dynamic>?)
          ?.map((e) => CampaignProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoiceId: (json['invoice_id'] as num?)?.toInt(),
      minBudget: json['campaign_budget_min'] as num?,
      maxBudget: json['campaign_budget_max'] as num?,
      brandWebsite: json['campaign_brand_website'] as String?,
      targetGender: CampaignObjectiveModel.fromJson(
          json['campaign_target_gender'] as Map<String, dynamic>),
      campaignObjectives: (json['campaign_objectives'] as List<dynamic>)
          .map(
              (e) => CampaignObjectiveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetCategories: (json['campaign_target_categories'] as List<dynamic>)
          .map(
              (e) => CampaignObjectiveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetAgeGroups: (json['campaign_target_age_group'] as List<dynamic>)
          .map(
              (e) => CampaignObjectiveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetPlatforms: (json['campaign_target_platforms'] as List<dynamic>)
          .map(
              (e) => CampaignObjectiveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      campaignAssets: (json['campaign_assets'] as List<dynamic>)
          .map((e) => BrandCampaignAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetTiresList: (json['campaign_target_tier'] as List<dynamic>)
          .map(
              (e) => CampaignObjectiveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoiceNumber: json['invoice_no'] as String?,
      campaignId: (json['campaign_id'] as num).toInt(),
      campaignTitle: json['campaign_title'] as String?,
      campaignLaunchDate: json['campaign_launch_date'] == null
          ? null
          : DateTime.parse(json['campaign_launch_date'] as String),
      taxRate: (json['tax_rate'] as num?)?.toDouble(),
      delegationFeeRate: (json['delegation_fee_rate'] as num?)?.toDouble(),
      agencyFeeRate: (json['agency_fee_rate'] as num?)?.toDouble(),
      campaignAttachmentUrl: json['campaign_attachment_url'] as String?,
      campaignBrief: json['campaign_brief'] as String?,
      campaignStatus: json['campaign_status'] as String,
      campaignCreatedAt: DateTime.parse(json['campaign_created_at'] as String),
      clientProfileId: (json['client_profile_id'] as num).toInt(),
      clientFirstName: json['client_first_name'] as String?,
      clientLastName: json['client_last_name'] as String?,
      socialPlatforms: (json['social_platforms'] as List<dynamic>)
          .map((e) => BrandSocialPlatform.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: (json['total_price'] as num).toDouble(),
      releasedToAllStars: json['released_to_all_stars'] as bool?,
      areAllStarsRated: json['are_all_stars_rated'] as bool?,
      starParticipation: json['star_participation'] as bool?,
    );

Map<String, dynamic> _$$BrandCampaignModelImplToJson(
        _$BrandCampaignModelImpl instance) =>
    <String, dynamic>{
      'services': instance.services.map((e) => e.toJson()).toList(),
      'progress': instance.progress,
      'type': instance.type,
      'currency': instance.currency,
      'subtotal': instance.subtotal,
      'profiles': instance.profiles.map((e) => e.toJson()).toList(),
      'timeline': instance.timeline?.map((e) => e.toJson()).toList(),
      'timestamp': instance.timestamp.toIso8601String(),
      'isSelected': instance.isSelected,
      'draft_stars': instance.draftStars?.map((e) => e.toJson()).toList(),
      'invoice_id': instance.invoiceId,
      'campaign_budget_min': instance.minBudget,
      'campaign_budget_max': instance.maxBudget,
      'campaign_brand_website': instance.brandWebsite,
      'campaign_target_gender': instance.targetGender.toJson(),
      'campaign_objectives':
          instance.campaignObjectives.map((e) => e.toJson()).toList(),
      'campaign_target_categories':
          instance.targetCategories.map((e) => e.toJson()).toList(),
      'campaign_target_age_group':
          instance.targetAgeGroups.map((e) => e.toJson()).toList(),
      'campaign_target_platforms':
          instance.targetPlatforms.map((e) => e.toJson()).toList(),
      'campaign_assets':
          instance.campaignAssets.map((e) => e.toJson()).toList(),
      'campaign_target_tier':
          instance.targetTiresList.map((e) => e.toJson()).toList(),
      'invoice_no': instance.invoiceNumber,
      'campaign_id': instance.campaignId,
      'campaign_title': instance.campaignTitle,
      'campaign_launch_date': instance.campaignLaunchDate?.toIso8601String(),
      'tax_rate': instance.taxRate,
      'delegation_fee_rate': instance.delegationFeeRate,
      'agency_fee_rate': instance.agencyFeeRate,
      'campaign_attachment_url': instance.campaignAttachmentUrl,
      'campaign_brief': instance.campaignBrief,
      'campaign_status': instance.campaignStatus,
      'campaign_created_at': instance.campaignCreatedAt.toIso8601String(),
      'client_profile_id': instance.clientProfileId,
      'client_first_name': instance.clientFirstName,
      'client_last_name': instance.clientLastName,
      'social_platforms':
          instance.socialPlatforms.map((e) => e.toJson()).toList(),
      'total_price': instance.totalPrice,
      'released_to_all_stars': instance.releasedToAllStars,
      'are_all_stars_rated': instance.areAllStarsRated,
      'star_participation': instance.starParticipation,
    };

_$CampaignProfileModelImpl _$$CampaignProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignProfileModelImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      submissions: (json['submissions'] as List<dynamic>?)
          ?.map(
              (e) => BrandSubmissionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      followers: (json['followers'] as num?)?.toInt(),
      fileSize: (json['fileSize'] as num?)?.toInt(),
      lastName: json['last_name'] as String?,
      firstName: json['first_name'] as String?,
      requestStatus: json['req_status'] as String?,
      clientNote: json['client_note'] as String?,
      profilePicture: json['profile_picture'] as String?,
      requestStatusUpdatedDate: json['req_status_updated_at'] == null
          ? null
          : DateTime.parse(json['req_status_updated_at'] as String),
      totalServicePrice: (json['total_service_price'] as num?)?.toDouble(),
      agencyFeeRateApplied:
          (json['agency_fee_rate_applied'] as num?)?.toDouble(),
      isReleased: json['is_released'] as bool?,
      isFavorite: json['is_favorite'] as bool?,
      isVerified: json['is_verified'] as bool?,
      isRated: (json['is_rated'] as num?)?.toInt(),
      starNote: json['star_note'] as String?,
      pricingModel: json['pricing_model'] as String?,
      bundleTitle: json['bundle_title'] as String?,
      bundlePrice: (json['bundle_price'] as num?)?.toDouble(),
      bundleNotes: json['bundle_notes'] as String?,
      campaignLaunchDate: json['campaign_launch_date'] == null
          ? null
          : DateTime.parse(json['campaign_launch_date'] as String),
      showAsPackage: json['show_as_package'] as bool?,
      draftServices: (json['draft_services'] as List<dynamic>?)
          ?.map((e) => DraftServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CampaignProfileModelImplToJson(
        _$CampaignProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'categories': instance.categories,
      'attachments': instance.attachments,
      'submissions': instance.submissions,
      'followers': instance.followers,
      'fileSize': instance.fileSize,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
      'req_status': instance.requestStatus,
      'client_note': instance.clientNote,
      'profile_picture': instance.profilePicture,
      'req_status_updated_at':
          instance.requestStatusUpdatedDate?.toIso8601String(),
      'total_service_price': instance.totalServicePrice,
      'agency_fee_rate_applied': instance.agencyFeeRateApplied,
      'is_released': instance.isReleased,
      'is_favorite': instance.isFavorite,
      'is_verified': instance.isVerified,
      'is_rated': instance.isRated,
      'star_note': instance.starNote,
      'pricing_model': instance.pricingModel,
      'bundle_title': instance.bundleTitle,
      'bundle_price': instance.bundlePrice,
      'bundle_notes': instance.bundleNotes,
      'campaign_launch_date': instance.campaignLaunchDate?.toIso8601String(),
      'show_as_package': instance.showAsPackage,
      'draft_services': instance.draftServices,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      name: json['name'] as String,
      nameAr: json['name_ar'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'name_ar': instance.nameAr,
    };

_$Brand_SocialPlatformImpl _$$Brand_SocialPlatformImplFromJson(
        Map<String, dynamic> json) =>
    _$Brand_SocialPlatformImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      filename: json['filename'] as String?,
      followers: (json['followers'] as num?)?.toInt(),
      nameAr: json['name_ar'] as String?,
      webUrl: json['web_url'] as String?,
      filenameGray: json['filename_gray'] as String?,
      additionalPlatformInfo: json['additional_platform_info'] as String?,
      price: json['price'] as num?,
    );

Map<String, dynamic> _$$Brand_SocialPlatformImplToJson(
        _$Brand_SocialPlatformImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'filename': instance.filename,
      'followers': instance.followers,
      'name_ar': instance.nameAr,
      'web_url': instance.webUrl,
      'filename_gray': instance.filenameGray,
      'additional_platform_info': instance.additionalPlatformInfo,
      'price': instance.price,
    };

_$Brand_CampaignServiceModelImpl _$$Brand_CampaignServiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$Brand_CampaignServiceModelImpl(
      ref: (json['ref'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toInt(),
      status: json['status'] as String?,
      profile: CampaignProfileModel.fromJson(
          json['profile'] as Map<String, dynamic>),
      description: json['description'] as String?,
      serviceId: (json['service_id'] as num?)?.toInt(),
      isCustomOfferService: json['is_custom_offer_service'] as bool?,
      campaignId: (json['campaign_id'] as num).toInt(),
      discountRate: (json['discount_rate'] as num?)?.toDouble(),
      isBundled: json['is_bundled'] as bool? ?? false,
      socialPlatform: (json['social_platform'] as List<dynamic>)
          .map((e) => BrandSocialPlatform.fromJson(e as Map<String, dynamic>))
          .toList(),
      socialPlatformOption: json['social_platform_option'] == null
          ? null
          : SocialPlatformOption.fromJson(
              json['social_platform_option'] as Map<String, dynamic>),
      additionalServiceDetail: json['additional_service_detail'] as String?,
    );

Map<String, dynamic> _$$Brand_CampaignServiceModelImplToJson(
        _$Brand_CampaignServiceModelImpl instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'price': instance.price,
      'quantity': instance.quantity,
      'status': instance.status,
      'profile': instance.profile,
      'description': instance.description,
      'service_id': instance.serviceId,
      'is_custom_offer_service': instance.isCustomOfferService,
      'campaign_id': instance.campaignId,
      'discount_rate': instance.discountRate,
      'is_bundled': instance.isBundled,
      'social_platform': instance.socialPlatform,
      'social_platform_option': instance.socialPlatformOption,
      'additional_service_detail': instance.additionalServiceDetail,
    };

_$TimeLineModelImpl _$$TimeLineModelImplFromJson(Map<String, dynamic> json) =>
    _$TimeLineModelImpl(
      title: json['title'] as String?,
      describe: json['describe'] as String?,
      currentStatus: json['curr_status'] as String,
      occurredAt: DateTime.parse(json['occurred_at'] as String),
      previousStatus: json['prev_status'] as String,
    );

Map<String, dynamic> _$$TimeLineModelImplToJson(_$TimeLineModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'describe': instance.describe,
      'curr_status': instance.currentStatus,
      'occurred_at': instance.occurredAt.toIso8601String(),
      'prev_status': instance.previousStatus,
    };

_$CampaignObjectiveModelImpl _$$CampaignObjectiveModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignObjectiveModelImpl(
      ar: json['ar'] as String,
      en: json['en'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$CampaignObjectiveModelImplToJson(
        _$CampaignObjectiveModelImpl instance) =>
    <String, dynamic>{
      'ar': instance.ar,
      'en': instance.en,
      'id': instance.id,
    };

_$Brand_CampaignAssetImpl _$$Brand_CampaignAssetImplFromJson(
        Map<String, dynamic> json) =>
    _$Brand_CampaignAssetImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      type: json['type'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$Brand_CampaignAssetImplToJson(
        _$Brand_CampaignAssetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'type': instance.type,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$TargetTierImpl _$$TargetTierImplFromJson(Map<String, dynamic> json) =>
    _$TargetTierImpl(
      ar: json['ar'] as String,
      en: json['en'] as String,
      id: (json['id'] as num).toInt(),
      label: json['label'] as String,
      maxFollowers: (json['max_followers'] as num).toInt(),
      minFollowers: (json['min_followers'] as num).toInt(),
    );

Map<String, dynamic> _$$TargetTierImplToJson(_$TargetTierImpl instance) =>
    <String, dynamic>{
      'ar': instance.ar,
      'en': instance.en,
      'id': instance.id,
      'label': instance.label,
      'max_followers': instance.maxFollowers,
      'min_followers': instance.minFollowers,
    };

_$Brand_SubmissionsModelImpl _$$Brand_SubmissionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$Brand_SubmissionsModelImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      type: json['type'] as String,
      createdAt: json['created_at'] as String,
      submittedBy: (json['submitted_by'] as num).toInt(),
    );

Map<String, dynamic> _$$Brand_SubmissionsModelImplToJson(
        _$Brand_SubmissionsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'type': instance.type,
      'created_at': instance.createdAt,
      'submitted_by': instance.submittedBy,
    };

_$DraftServiceModelImpl _$$DraftServiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DraftServiceModelImpl(
      id: (json['id'] as num).toInt(),
      ref: (json['ref'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      serviceDescription: json['service_description'] as String?,
      campaignId: (json['campaign_id'] as num?)?.toInt(),
      platformId: (json['platform_id'] as num?)?.toInt(),
      isCustomOfferService: json['is_custom_offer_service'] as bool?,
      costPrice: (json['cost_price'] as num?)?.toDouble(),
      listPrice: (json['list_price'] as num?)?.toDouble(),
      socialPlatformOptionId:
          (json['social_platform_option_id'] as num?)?.toInt(),
      platform: json['platform'] == null
          ? null
          : DraftPlatform.fromJson(json['platform'] as Map<String, dynamic>),
      socialPlatformOption: json['social_platform_option'] == null
          ? null
          : SocialPlatformOption.fromJson(
              json['social_platform_option'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DraftServiceModelImplToJson(
        _$DraftServiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ref': instance.ref,
      'quantity': instance.quantity,
      'service_description': instance.serviceDescription,
      'campaign_id': instance.campaignId,
      'platform_id': instance.platformId,
      'is_custom_offer_service': instance.isCustomOfferService,
      'cost_price': instance.costPrice,
      'list_price': instance.listPrice,
      'social_platform_option_id': instance.socialPlatformOptionId,
      'platform': instance.platform,
      'social_platform_option': instance.socialPlatformOption,
    };

_$DraftPlatformImpl _$$DraftPlatformImplFromJson(Map<String, dynamic> json) =>
    _$DraftPlatformImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      filename: json['filename'] as String?,
      nameAr: json['name_ar'] as String?,
      webUrl: json['web_url'] as String?,
      filenameGray: json['filename_gray'] as String?,
    );

Map<String, dynamic> _$$DraftPlatformImplToJson(_$DraftPlatformImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'filename': instance.filename,
      'name_ar': instance.nameAr,
      'web_url': instance.webUrl,
      'filename_gray': instance.filenameGray,
    };

_$SocialPlatformOptionImpl _$$SocialPlatformOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialPlatformOptionImpl(
      id: (json['id'] as num?)?.toInt(),
      platformId: (json['platform_id'] as num?)?.toInt(),
      arOptionName: json['ar_option_name'] as String?,
      enOptionName: json['en_option_name'] as String?,
    );

Map<String, dynamic> _$$SocialPlatformOptionImplToJson(
        _$SocialPlatformOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platform_id': instance.platformId,
      'ar_option_name': instance.arOptionName,
      'en_option_name': instance.enOptionName,
    };
