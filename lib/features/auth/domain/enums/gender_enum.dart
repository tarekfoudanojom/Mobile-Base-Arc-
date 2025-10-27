import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:get/get.dart';

enum GenderEnum {
  female,
  male;

  int getEnumValue() => switch (this) {
        female => 1,
        male => 2,
      };

  String getEnumName() => switch (this) {
        female => Translate.s.female,
        male => Translate.s.male,
      };

  static String getGenderName(int? id) {
    switch (id) {
      case 1:
        return Translate.s.female;
      case 2:
        return Translate.s.male;
      default:
        return "Unknown"; // Optional default case
    }
  }

  static GenderEnum getGenderEnum(int? id) {
    switch (id) {
      case 1:
        return GenderEnum.female;
      default:
        return GenderEnum.male;

    }
  }
}

