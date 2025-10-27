import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

enum StatusEnum {
  public,
  brandOnly,
  onlyMy;

  String getEnumName() => switch (this) {
        public => Translate.s.public,
        brandOnly => Translate.s.brand_only,
        onlyMy => Translate.s.only_me,
      };

  String getSubTitle() => switch (this) {
        public => Translate.s.for_every_one,
        brandOnly => Translate.s.restricted_members,
        onlyMy => Translate.s.visible_to_owner,
      };

  int getEnumValue() => switch (this) {
        public => 1,
        brandOnly => 2,
        onlyMy => 3,
      };

  static StatusEnum getStatusEnum(int id) {
    switch (id) {
      case 1:
        return StatusEnum.public;
      case 2:
        return StatusEnum.brandOnly;
      default:
        return StatusEnum.onlyMy;
    }
  }

  static Color setColor(StatusEnum? value, BuildContext context) {
    switch (value) {
      case StatusEnum.public:
        return context.colors.appColorBlue;
      case StatusEnum.brandOnly:
        return context.colors.slightDeepGreen;
      case StatusEnum.onlyMy:
        return context.colors.red;
      default:
        return context.colors.white;
    }
  }
}
