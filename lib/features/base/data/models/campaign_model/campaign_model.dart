import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/base/data/enum/campaign_type_enum.dart';
import 'package:flutter_tdd/features/base/data/enum/track_request_enum.dart';
import 'package:flutter_tdd/features/base/domain/enities/custom_offer_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../../../../core/helpers/date_formatter.dart';

part 'campaign_model.freezed.dart';
part 'campaign_model.g.dart';

@unfreezed
@immutable
class BrandCampaignModel with _$BrandCampaignModel {
  const BrandCampaignModel._();

  @JsonSerializable(explicitToJson: true)
  factory BrandCampaignModel({
    required List<BrandCampaignServiceModel> services,
    required int progress,
    required String type,
    required String currency,
    required num subtotal,
    required List<CampaignProfileModel> profiles,
    required List<TimeLineModel>? timeline,
    required DateTime timestamp,
    bool? isSelected,
    @JsonKey(name: "draft_stars") List<CampaignProfileModel>? draftStars,
    @JsonKey(name: "invoice_id") required int? invoiceId,
    @JsonKey(name: "campaign_budget_min") num? minBudget,
    @JsonKey(name: "campaign_budget_max") num? maxBudget,
    @JsonKey(name: "campaign_brand_website") required String? brandWebsite,
    @JsonKey(name: "campaign_target_gender")
    required CampaignObjectiveModel targetGender,
    @JsonKey(name: "campaign_objectives")
    required List<CampaignObjectiveModel> campaignObjectives,
    @JsonKey(name: "campaign_target_categories")
    required List<CampaignObjectiveModel> targetCategories,
    @JsonKey(name: "campaign_target_age_group")
    required List<CampaignObjectiveModel> targetAgeGroups,
    @JsonKey(name: "campaign_target_platforms")
    required List<CampaignObjectiveModel> targetPlatforms,
    @JsonKey(name: "campaign_assets")
    required List<BrandCampaignAsset> campaignAssets,
    @JsonKey(name: "campaign_target_tier")
    required List<CampaignObjectiveModel> targetTiresList,
    @JsonKey(name: "invoice_no") required String? invoiceNumber,
    @JsonKey(name: "campaign_id") required int campaignId,
    @JsonKey(name: "campaign_title") required String? campaignTitle,
    @JsonKey(name: "campaign_launch_date")
    required DateTime? campaignLaunchDate,
    @JsonKey(name: "tax_rate") double? taxRate,
    @JsonKey(name: "delegation_fee_rate") double? delegationFeeRate,
    @JsonKey(name: "agency_fee_rate") double? agencyFeeRate,
    @JsonKey(name: "campaign_attachment_url")
    required String? campaignAttachmentUrl,
    @JsonKey(name: "campaign_brief") required String? campaignBrief,
    @JsonKey(name: "campaign_status") required String campaignStatus,
    @JsonKey(name: "campaign_created_at") required DateTime campaignCreatedAt,
    @JsonKey(name: "client_profile_id") required int clientProfileId,
    @JsonKey(name: "client_first_name") required String? clientFirstName,
    @JsonKey(name: "client_last_name") required String? clientLastName,
    @JsonKey(name: "social_platforms")
    required List<BrandSocialPlatform> socialPlatforms,
    @JsonKey(name: "total_price") required double totalPrice,
    @JsonKey(name: "released_to_all_stars") required bool? releasedToAllStars,
    @JsonKey(name: "are_all_stars_rated") required bool? areAllStarsRated,
    @JsonKey(name: "star_participation") required bool? starParticipation,
  }) = _BrandCampaignModel;

  factory BrandCampaignModel.fromJson(Map<String, dynamic> json) =>
      _$BrandCampaignModelFromJson(json);

  String get formattedTotalPrice {
    // final double orderTotalPrice = double.parse(price);
    // final formatter = NumberFormat.decimalPattern();
    // return formatter.format(orderTotalPrice);
    var price = getIt<Utilities>().handleDecimalFormat(totalPrice);
    return getIt<Utilities>().handleThousandFormat(price);
  }

  String getFileName(String fileName) {
    if (hasAssets) {
      String name = fileName.substring(fileName.lastIndexOf('/') + 1);
      // List<String> parts = name.split('_');
      // return parts.isNotEmpty ? parts.last : name;
      return name;
    } else {
      return "";
    }
  }

  double get percentDecimalValue {
    return progress / 100;
  }

  String get formattedLaunchDate {
    return formatDateToArabic(campaignCreatedAt);
  }

  String get formattedInvoiceDate {
    if (campaignLaunchDate != null) {
      return formatDateToArabic(campaignLaunchDate!);
    } else {
      return "";
    }
  }

  String get launchDateInMonthAndYear {
    if (campaignLaunchDate != null) {
      return formatDateToArabic(campaignLaunchDate!, format: 'd MMM, yyyy');
    } else {
      return "";
    }
  }

  String get campaignDate {
    if (campaignLaunchDate != null) {
      return formatDateToArabic(campaignLaunchDate!);
    } else {
      return "";
    }
  }

  String get campaignTime {
    if (campaignLaunchDate != null) {
      return formatDateToArabic(campaignLaunchDate!, format: 'hh:mm a');
    } else {
      return "";
    }
  }

  bool get isReleased => campaignStatus == "completed" && releasedToAllStars!;

  /// campaign completed and released
  bool get isInProgress => campaignStatus == "in_progress";

  bool get isPending => campaignStatus == "pending";

  bool get isDelivered => campaignStatus == "completed" && !releasedToAllStars!;

  /// (campaign completed and not released)
  bool get isCanceled => campaignStatus == "canceled";

  bool get isCompleted => campaignStatus == "completed";

  bool get isRequested => campaignStatus == "pending";

  bool get isCreated => campaignStatus == "created";

  bool get hasAssets => campaignAssets.isNotEmpty;

  bool get isShowAddStarButton => isCreated || isPending || isInProgress;

  BrandCampaignTypeEnum get getCampaignStatus {
    switch (campaignStatus) {
      case "created":
        return BrandCampaignTypeEnum.created;
      case "pending":
        return BrandCampaignTypeEnum.requested;
      case "completed":
        return releasedToAllStars!
            ? BrandCampaignTypeEnum.completed
            : BrandCampaignTypeEnum.delivered;
      case "in_progress":
        return BrandCampaignTypeEnum.inProgress;
      case "canceled":
        return BrandCampaignTypeEnum.canceled;
      default:
        return BrandCampaignTypeEnum.requested;
    }
  }
}

@unfreezed
@immutable
class CampaignProfileModel with _$CampaignProfileModel {
  const CampaignProfileModel._();

  factory CampaignProfileModel({
    required int id,
    required String username,
    required List<Category>? categories,
    required List<String>? attachments,
    required List<BrandSubmissionsModel>? submissions,
    required int? followers,
    required int? fileSize,
    @JsonKey(name: "last_name") required String? lastName,
    @JsonKey(name: "first_name") required String? firstName,
    @JsonKey(name: "req_status") required String? requestStatus,
    @JsonKey(name: "client_note") required String? clientNote,
    @JsonKey(name: "profile_picture") String? profilePicture,
    @JsonKey(name: "req_status_updated_at")
    required DateTime? requestStatusUpdatedDate,
    @JsonKey(name: "total_service_price") required double? totalServicePrice,
    @JsonKey(name: "agency_fee_rate_applied")
    required double? agencyFeeRateApplied,
    @JsonKey(name: "is_released") required bool? isReleased,
    @JsonKey(name: "is_favorite") bool? isFavorite,
    @JsonKey(name: "is_verified") bool? isVerified,
    @JsonKey(name: "is_rated") required int? isRated,
    @JsonKey(name: "star_note") required String? starNote,
    @JsonKey(name: "pricing_model") required String? pricingModel,
    @JsonKey(name: "bundle_title") required String? bundleTitle,
    @JsonKey(name: "bundle_price") required double? bundlePrice,
    @JsonKey(name: "bundle_notes") required String? bundleNotes,
    @JsonKey(name: "campaign_launch_date")
    required DateTime? campaignLaunchDate,
    @JsonKey(name: "show_as_package") bool? showAsPackage,
    @JsonKey(name: "draft_services") List<DraftServiceModel>? draftServices,
  }) = _CampaignProfileModel;

  String get starName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == 'ar'
        ? "${lastName ?? ""} ${firstName ?? ""}"
        : "${firstName ?? ""} ${lastName ?? ""}";
  }

  String get formattedRequestDateTime {
    String formattedDate = formatDateToArabic(
        requestStatusUpdatedDate ?? DateTime.now(),
        format: 'EEEE, MMMM d, y, h:mm a');
    return formattedDate;
  }

  String get formattedTotalServicePrice {
    final formatter = NumberFormat.decimalPattern();
    return formatter.format(totalServicePrice);
  }

  String getFileName(String fileName) {
    return submissions != null && submissions!.isNotEmpty
        ? fileName.substring(fileName.lastIndexOf('/') + 1)
        : "";
  }

  OfferConfig getOfferConfig() {
    return OfferConfig(
      pricingModel: pricingModel == "bundled"
          ? PricingModel.bundled
          : PricingModel.itemized,
      bundle: pricingModel == "bundled"
          ? Bundle(
              price: bundlePrice ?? 0,
              title: bundleTitle,
              notes: bundleNotes,
            )
          : null,
    );
  }

  bool get hasFiles => submissions != null && submissions!.isNotEmpty;

  bool get hasNotes => clientNote != null;

  bool get isApproved => requestStatus == "approved";

  bool get isCompleted => requestStatus == "completed" && (isReleased ?? false);

  bool get isDelivered => requestStatus == "completed" && (isReleased == false);

  bool get isPending => requestStatus == "pending";

  bool get isRejected => requestStatus == "rejected";

  bool get haveRates {
    if (isRated == 1) {
      return true;
    } else {
      return false;
    }
  }

  TrackRequestEnum get getRequestStatus {
    switch (requestStatus) {
      case "approved":
        return TrackRequestEnum.approved;
      case "pending":
        return TrackRequestEnum.pending;
      case "rejected":
        return TrackRequestEnum.rejected;
      case "completed":
        return isReleased ?? false
            ? TrackRequestEnum.completed
            : TrackRequestEnum.delivered;
      default:
        return TrackRequestEnum.pending;
    }
  }

  String get campaignTime {
    if (campaignLaunchDate != null) {
      return formatDateToArabic(campaignLaunchDate!, format: 'hh:mm a');
    } else {
      return "";
    }
  }

  String get formattedLaunchDate {
    if (campaignLaunchDate != null) {
      return formatDateToArabic(campaignLaunchDate!);
    } else {
      return "";
    }
  }

  num get getPurchasePrice {
    if ((draftServices ?? []).isEmpty) {
      return 0;
    }
    return draftServices!.fold<num>(
      0,
      (sum, item) => sum + ((item.costPrice ?? 0)),
    );
  }

  num get getSellingPrice {
    if ((draftServices ?? []).isEmpty) {
      return 0;
    }
    if (pricingModel == PricingModel.bundled.name) {
      return bundlePrice ?? 0;
    }
    return draftServices!
        .fold<num>(0, (sum, item) => sum + ((item.listPrice ?? 0)));
  }

  num get getProfit {
    final purchase = getPurchasePrice;
    final selling = getSellingPrice;

    return selling - purchase;
  }

  String get getProfitPercentage {
    final purchase = getPurchasePrice;
    final selling = getSellingPrice;

    if (purchase == 0) return "0.00"; // Avoid division by zero

    final profit = selling - purchase;
    return ((profit / purchase) * 100).toStringAsFixed(2);
  }

  factory CampaignProfileModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignProfileModelFromJson(json);
}

@freezed
@immutable
class Category with _$Category {
  const Category._();

  const factory Category({
    required String name,
    @JsonKey(name: "name_ar") required String nameAr,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  String get gteCategoryTranslatedName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar" ? nameAr : name;
  }
}

@unfreezed
@immutable
class BrandSocialPlatform with _$BrandSocialPlatform {
  const BrandSocialPlatform._();

  factory BrandSocialPlatform({
    required int? id,
    required String? name,
    required String? filename,
    required int? followers,
    @JsonKey(name: "name_ar") required String? nameAr,
    @JsonKey(name: "web_url") required String? webUrl,
    @JsonKey(name: "filename_gray") required String? filenameGray,
    @JsonKey(name: "additional_platform_info")
    required String? additionalPlatformInfo,
    required num? price,
  }) = Brand_SocialPlatform;

  factory BrandSocialPlatform.fromJson(Map<String, dynamic> json) =>
      _$BrandSocialPlatformFromJson(json);

  String get gtePlatFormTranslatedName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == "ar") {
      return nameAr ?? "";
    } else {
      return name ?? "";
    }
  }
}

@freezed
@immutable
class BrandCampaignServiceModel with _$BrandCampaignServiceModel {
  const BrandCampaignServiceModel._();

  const factory BrandCampaignServiceModel({
    required int? ref,
    required double? price,
    int? quantity,
    required String? status,
    required CampaignProfileModel profile,
    required String? description,
    @JsonKey(name: "service_id") required int? serviceId,
    @JsonKey(name: "is_custom_offer_service") bool? isCustomOfferService,
    @JsonKey(name: "campaign_id") required int campaignId,
    @JsonKey(name: "discount_rate") double? discountRate,
    @JsonKey(name: "is_bundled", defaultValue: false) required bool isBundled,
    @JsonKey(name: "social_platform")
    required List<BrandSocialPlatform> socialPlatform,
    @JsonKey(name: "social_platform_option")
    required SocialPlatformOption? socialPlatformOption,
    @JsonKey(name: "additional_service_detail")
    required String? additionalServiceDetail,
  }) = Brand_CampaignServiceModel;

  factory BrandCampaignServiceModel.fromJson(Map<String, dynamic> json) =>
      _$BrandCampaignServiceModelFromJson(json);
}

@unfreezed
@immutable
class TimeLineModel with _$TimeLineModel {
  const TimeLineModel._();

  factory TimeLineModel({
    String? title,
    String? describe,
    @JsonKey(name: "curr_status") required String currentStatus,
    @JsonKey(name: "occurred_at") required DateTime occurredAt,
    @JsonKey(name: "prev_status") required String previousStatus,
  }) = _TimeLineModel;

  factory TimeLineModel.fromJson(Map<String, dynamic> json) =>
      _$TimeLineModelFromJson(json);

  String get formattedDate {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    String formattedDate = DateFormat('EEEE, d MMMM, y, h:mm a', lang)
        .format(parseUtcDateTime(occurredAt.toString()).toLocal());
    return formattedDate.replaceAllMapped(RegExp(r'[٠-٩]'), (match) {
      return (match[0]!.codeUnitAt(0) - 0x0660).toString();
    });
  }

  DateTime parseUtcDateTime(String raw) {
    // Assumes format is: yyyy-MM-dd HH:mm:ss.SSSSSS
    final parts = raw.split(' ');
    final datePart = parts[0]; // "2025-06-17"
    final timePart = parts[1]; // "05:22:51.000000"

    final dateSegments = datePart.split('-').map(int.parse).toList();
    final timeSegments =
        timePart.split('.')[0].split(':').map(int.parse).toList();

    return DateTime.utc(
      dateSegments[0], // year
      dateSegments[1], // month
      dateSegments[2], // day
      timeSegments[0], // hour
      timeSegments[1], // minute
      timeSegments[2], // second
    );
  }
}

@freezed
@immutable
class CampaignObjectiveModel with _$CampaignObjectiveModel {
  const CampaignObjectiveModel._();

  const factory CampaignObjectiveModel({
    required String ar,
    required String en,
    required int id,
  }) = _CampaignObjectiveModel;

  factory CampaignObjectiveModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignObjectiveModelFromJson(json);

  String get gteObjectiveTranslatedName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == "ar") {
      return ar;
    } else {
      return en;
    }
  }
}

@freezed
@immutable
class BrandCampaignAsset with _$BrandCampaignAsset {
  const BrandCampaignAsset._();

  @JsonSerializable(explicitToJson: true)
  const factory BrandCampaignAsset({
    required int id,
    required String url,
    required String type,
    @JsonKey(name: "created_at") required DateTime createdAt,
  }) = Brand_CampaignAsset;

  factory BrandCampaignAsset.fromJson(Map<String, dynamic> json) =>
      _$BrandCampaignAssetFromJson(json);

  bool get isHosted => type == "hosted";

  String get getFileName {
    String name = url.substring(url.lastIndexOf('/') + 1);
    // List<String> parts = name.split('_');
    // return parts.isNotEmpty ? parts.last : name;
    return name;
  }
}

@freezed
@immutable
class TargetTier with _$TargetTier {
  const TargetTier._();

  @JsonSerializable(explicitToJson: true)
  const factory TargetTier({
    @JsonKey(name: "ar") required String ar,
    @JsonKey(name: "en") required String en,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "label") required String label,
    @JsonKey(name: "max_followers") required int maxFollowers,
    @JsonKey(name: "min_followers") required int minFollowers,
  }) = _TargetTier;

  factory TargetTier.fromJson(Map<String, dynamic> json) =>
      _$TargetTierFromJson(json);
}

@freezed
@immutable
class BrandSubmissionsModel with _$BrandSubmissionsModel {
  const BrandSubmissionsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory BrandSubmissionsModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "submitted_by") required int submittedBy,
  }) = Brand_SubmissionsModel;

  factory BrandSubmissionsModel.fromJson(Map<String, dynamic> json) =>
      _$BrandSubmissionsModelFromJson(json);

  bool get isHosted => type == "hosted";
}

@freezed
class DraftServiceModel with _$DraftServiceModel {
  const factory DraftServiceModel({
    required int id,
    int? ref,
    int? quantity,
    @JsonKey(name: "service_description") String? serviceDescription,
    @JsonKey(name: "campaign_id") int? campaignId,
    @JsonKey(name: "platform_id") int? platformId,
    @JsonKey(name: "is_custom_offer_service") bool? isCustomOfferService,
    @JsonKey(name: "cost_price") double? costPrice,
    @JsonKey(name: "list_price") double? listPrice,
    @JsonKey(name: "social_platform_option_id") int? socialPlatformOptionId,
    @JsonKey(name: "platform") DraftPlatform? platform,
    @JsonKey(name: "social_platform_option")
    SocialPlatformOption? socialPlatformOption,
  }) = _DraftServiceModel;

  factory DraftServiceModel.fromJson(Map<String, dynamic> json) =>
      _$DraftServiceModelFromJson(json);
}

@freezed
@immutable
class DraftPlatform with _$DraftPlatform {
  const DraftPlatform._();

  const factory DraftPlatform({
    int? id,
    String? name,
    String? filename,
    @JsonKey(name: "name_ar") String? nameAr,
    @JsonKey(name: "web_url") String? webUrl,
    @JsonKey(name: "filename_gray") String? filenameGray,
  }) = _DraftPlatform;

  factory DraftPlatform.fromJson(Map<String, dynamic> json) =>
      _$DraftPlatformFromJson(json);

  String get getPlatformName {
    BuildContext context = getIt<GlobalContext>().context();
    if (context.isArabic) {
      return nameAr ?? "";
    } else {
      return name ?? "";
    }
  }
}

@freezed
@immutable
class SocialPlatformOption with _$SocialPlatformOption {
  const SocialPlatformOption._();

  const factory SocialPlatformOption({
    int? id,
    @JsonKey(name: "platform_id") int? platformId,
    @JsonKey(name: "ar_option_name") String? arOptionName,
    @JsonKey(name: "en_option_name") String? enOptionName,
  }) = _SocialPlatformOption;

  factory SocialPlatformOption.fromJson(Map<String, dynamic> json) =>
      _$SocialPlatformOptionFromJson(json);

  String get getPlatformName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == "ar") {
      return arOptionName ?? enOptionName ?? Translate.s.video;
    } else {
      return enOptionName ?? Translate.s.video;
    }
  }
}
