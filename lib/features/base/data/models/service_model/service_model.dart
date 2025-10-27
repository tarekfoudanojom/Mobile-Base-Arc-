import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/features/base/data/models/campaign_model/campaign_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@unfreezed
class ServiceDetailsModel with _$ServiceDetailsModel {
  const ServiceDetailsModel._();
  @JsonSerializable(explicitToJson: true)
  factory ServiceDetailsModel({
    @JsonKey(name: "service_description") String? serviceDescription,
    @JsonKey(name: "pricing_requested") bool? pricingRequested,
    @JsonKey(name: "services") List<BrandServiceModel>? services,
    @JsonKey(name: "star_participation") StarParticipation? starParticipation,
  }) = _ServiceDetailsModel;

  factory ServiceDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDetailsModelFromJson(json);
}

@unfreezed
class StarParticipation with _$StarParticipation {
  const StarParticipation._();
  @JsonSerializable(explicitToJson: true)
  factory StarParticipation({
    @JsonKey(name: "summary") ParticipationSummary? summary,
    @JsonKey(name: "campaigns") ParticipationCampaigns? campaigns,
  }) = _StarParticipation;

  factory StarParticipation.fromJson(Map<String, dynamic> json) =>
      _$StarParticipationFromJson(json);
}

@unfreezed
class ParticipationSummary with _$ParticipationSummary {
  const ParticipationSummary._();
  @JsonSerializable(explicitToJson: true)
  factory ParticipationSummary({
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "paid") int? paid,
    @JsonKey(name: "drafted") int? drafted,
  }) = _ParticipationSummary;

  factory ParticipationSummary.fromJson(Map<String, dynamic> json) =>
      _$ParticipationSummaryFromJson(json);
}

@unfreezed
class ParticipationCampaigns with _$ParticipationCampaigns {
  const ParticipationCampaigns._();
  @JsonSerializable(explicitToJson: true)
  factory ParticipationCampaigns({
    @JsonKey(name: "paid") List<int>? paid,
    @JsonKey(name: "drafted") List<int>? drafted,
  }) = _ParticipationCampaigns;

  factory ParticipationCampaigns.fromJson(Map<String, dynamic> json) =>
      _$ParticipationCampaignsFromJson(json);
}

@unfreezed
class BrandServiceModel with _$BrandServiceModel {
  const BrandServiceModel._();

  @JsonSerializable(explicitToJson: true)
  factory BrandServiceModel({
    int? platformId,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "social_platform_type_id") int? socialPlatformTypeId,
    required String name,
    String? filename,
    @JsonKey(name: "filename_gray") String? filenameGray,
    @JsonKey(name: "web_url") String? webUrl,
    String? status,
    @JsonKey(name: "name_ar") required String nameAr,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "service_id") int? serviceId,
    @JsonKey(name: "social_platform_id") int? servicePlatformId,
    @JsonKey(name: "followers") num? followers,
    @JsonKey(name: "username") String? platformUserName,
    @JsonKey(name: "ar_option_name") String? arOptionName,
    @JsonKey(name: "en_option_name") String? enOptionName,
    @JsonKey(name: "discount_rate") double? discountRate,
    @JsonKey(name: "social_platform_option_id") int? socialPlatformOptionId,
    @JsonKey(name: "public_status", defaultValue: 1) num? publicStatus,
    @Default(false) bool selected,
    @Default(0) int quantity,
  }) = Brand_ServiceModel;

  factory BrandServiceModel.fromJson(Map<String, dynamic> json) =>
      _$BrandServiceModelFromJson(json);

  factory BrandServiceModel.forDraftService(
    DraftServiceModel model,
  ) {
    return BrandServiceModel(
        id: model.id,
        platformId: model.platform?.id ?? 0,
        socialPlatformTypeId: model.socialPlatformOptionId ?? 0,
        name: model.platform?.name ?? "",
        status: "1",
        filename: model.platform?.filename ?? "",
        nameAr: model.platform?.nameAr ?? "",
        filenameGray: model.platform?.filenameGray ?? "",
        webUrl: model.platform?.webUrl ?? "",
        quantity: model.quantity ?? 0,
        price: (model.listPrice ?? 0).toDouble(),
        arOptionName: model.socialPlatformOption?.arOptionName ?? "",
        enOptionName: model.socialPlatformOption?.enOptionName ?? "",
        selected: true);
  }

  String get getServiceName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar" ? nameAr : name;
  }

  String get getPlatformName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar"
        ? arOptionName ?? enOptionName ?? Translate.s.video
        : enOptionName ?? Translate.s.video;
  }

  String get getServicePlatformName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar"
        ? arOptionName ?? enOptionName ?? Translate.s.video
        : enOptionName ?? Translate.s.video;
  }

  String? extractFollowersNumber(String? followers) {
    if (followers != null) {
      final numberMatch = RegExp(r'^\d+(\.\d+)?').firstMatch(followers);
      return numberMatch?.group(0);
    } else {
      return "";
    }
  }

  String? extractFollowersTxtValue(String? followers) {
    if (followers != null) {
      final match = RegExp(r'[\u0600-\u06FF]+').allMatches(followers);
      return match.map((m) => m.group(0)).join(' ');
    } else {
      return "";
    }
  }

  String get getDiscountPrice {
    double priceFinal = price;
    double discount = discountRate ?? 1;
    final price1 = (priceFinal / (1 - discount));
    return getIt<Utilities>().handleThousandFormat(price1.toString());
  }

  String get getPrice {
    double priceFinal = price;
    return getIt<Utilities>().handleThousandFormat(priceFinal.toString());
  }
}
