import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

enum BrandCampaignTypeEnum {
  /// pending
  requested,

  /// campaign completed and not released yet
  delivered,

  /// in_progress
  inProgress,

  ///campaign completed and released
  completed,

  /// canceled
  canceled,

  /// created without any stars
  created;


  String get getEnumValue => switch (this) {
        delivered => Translate.s.order_delivered,
        requested => Translate.s.order_requested,
        created => Translate.s.order_created,
        inProgress => Translate.s.order_in_progress,
        completed => Translate.s.order_completed,
        canceled => Translate.s.order_canceled,
      };

  Color get getStatusColor {
    BuildContext context = getIt<GlobalContext>().context();
    switch (this) {
      case BrandCampaignTypeEnum.requested:
        return context.colors.black;
      case BrandCampaignTypeEnum.created:
        return context.colors.black;
      case BrandCampaignTypeEnum.delivered:
        return context.colors.orange;
      case BrandCampaignTypeEnum.inProgress:
        return context.colors.appColorBlue;
      case BrandCampaignTypeEnum.completed:
        return context.colors.green;
      case BrandCampaignTypeEnum.canceled:
        return context.colors.red;
    }
  }

  Color get getContainerColor {
    BuildContext context = getIt<GlobalContext>().context();
    switch (this) {
      case BrandCampaignTypeEnum.requested:
        return context.colors.background1;
      case BrandCampaignTypeEnum.created:
        return context.colors.background1;
      case BrandCampaignTypeEnum.delivered:
        return context.colors.orange.withValues(alpha: 0.1);
      case BrandCampaignTypeEnum.inProgress:
        return context.colors.appColorBlue.withValues(alpha: 0.05);
      case BrandCampaignTypeEnum.completed:
        return context.colors.green.withValues(alpha: 0.1);
      case BrandCampaignTypeEnum.canceled:
        return context.colors.red.withValues(alpha: 0.1);
    }
  }

  int get getCurrentStep => switch (this) {
        BrandCampaignTypeEnum.created => 0,
        BrandCampaignTypeEnum.requested => 1,
        BrandCampaignTypeEnum.inProgress => 2,
        BrandCampaignTypeEnum.delivered => 3,
        BrandCampaignTypeEnum.canceled => 4,
        BrandCampaignTypeEnum.completed => 4,
      };
}
