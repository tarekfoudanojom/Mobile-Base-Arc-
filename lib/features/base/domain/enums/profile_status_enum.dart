import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

enum ProfileStatusEnum {
  public,
  brandOnly,
  onlyMy;

  String getEnumName() => switch (this) {
        public => Translate.s.public,
        brandOnly => Translate.s.brand_only,
        onlyMy => Translate.s.only_me,
      };

  Color statusColor(BuildContext context) => switch (this) {
        public => context.colors.appColorBlue,
        brandOnly => context.colors.green,
        onlyMy => context.colors.red,
      };

  Color bgColor(BuildContext context) => switch (this) {
        public => context.colors.appColorBlue.withValues(alpha: 0.18).withAlpha(70),
        brandOnly => context.colors.green.withValues(alpha: 0.18).withAlpha(70),
        onlyMy => context.colors.red.withValues(alpha: 0.18).withAlpha(70),
      };

  String getSubTitle() => switch (this) {
        public => Translate.s.visible,
        brandOnly => Translate.s.restricted_members,
        onlyMy => Translate.s.visible_to_owner,
      };

  int getEnumValue() => switch (this) {
        public => 1,
        brandOnly => 2,
        onlyMy => 3,
      };

  static ProfileStatusEnum getProfileEnum(int id) {
    switch (id) {
      case 1:
        return ProfileStatusEnum.public;
      case 2:
        return ProfileStatusEnum.brandOnly;
      default:
        return ProfileStatusEnum.onlyMy;
    }
  }
}
