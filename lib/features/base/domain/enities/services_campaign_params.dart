import 'dart:io';

import 'package:flutter_tdd/features/base/domain/enities/service_params.dart';

class ServicesCampaignParams {
  final String? title;
  final String? launchDate;
  final String? brief;
  int campId;

  // final String? attachmentUrl;
  final List<dynamic>? objectives;

  /// list of string and int

  final List<ServiceParams>? stars;
  final int? budgetMin;
  final int? budgetMax;
  final int? targetGender;
  String? paymentMethod;
  final List<int>? targetAgeGroup;
  final List<int>? targetPlatforms;
  final List<int>? targetCategories;
  final List<int>? targetTier;
  final String? brandWebsite;
  final bool? isAi;
  final List<String>? assets;
  final List<File>? attachedFilesFromCampData;
  ServicesCampaignParams({
    this.title,
    this.launchDate,
    this.brief,
    // this.attachmentUrl,
    this.stars,
    this.paymentMethod,
    this.objectives,
    this.budgetMin,
    this.budgetMax,
    this.targetGender,
    this.targetAgeGroup,
    this.targetPlatforms,
    this.targetCategories,
    this.targetTier,
    this.brandWebsite,
    this.isAi,
    this.assets,
    this.attachedFilesFromCampData,
    this.campId = 0,
  });

  /// if you send all data without stars or payment method
  /// you will get the campaign with just id...nothing more

  /// if you send stars and payment method
  /// you will get the campaign model but without the additional data

  Map<String, dynamic> toJson() {
    return {
      if (title != null) 'title': title,
      if (launchDate != null) 'launchDate': launchDate,
      if (brief != null) 'brief': brief,
      if (objectives != null) "objectives": objectives,
      if (targetGender != null) "targetGender": targetGender,
      if (targetAgeGroup != null) "targetAgeGroup": targetAgeGroup,
      if (targetPlatforms != null) "targetPlatforms": targetPlatforms,
      if (targetCategories != null) "targetCategories": targetCategories,
      if (targetTier != null) "targetTier": targetTier,
      if (budgetMin != null) "budgetMin": budgetMin,
      if (budgetMax != null) "budgetMax": budgetMax,
      if (brandWebsite != null) "brandWebsite": brandWebsite,
      if (isAi != null) "aiAssisted": isAi,
      if (assets != null) "assets": assets,
      // if(attachmentUrl != null && attachmentUrl != '')'attachment_url': attachmentUrl,
      if (stars != null) 'stars': stars,
      if (paymentMethod != null) 'paymentMethod': paymentMethod,
    };
  }

// "stars": [
//     {
//         "id": 248,
//         "services": [{ "id": 9410, "description": "test" }, { "id": 9597 }],
//         "launchDate": "2024-12-30 00:00:00",
//         "note": "test",
//         "assets": ["https://s3.me-central-1.amazonaws.com/cdn.influencebird.com/GhpkeMG4ymZRR7faTSFn.png"]
//     }
// ],
}
