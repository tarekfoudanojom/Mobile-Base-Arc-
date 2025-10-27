import 'package:flutter_tdd/core/localization/translate.dart';

enum ProfileGenderEnum {
  female,
  male,
  other;

  int getEnumValue() => switch (this) {
    female => 1,
    male => 2,
    other => 3,
  };

  String getEnumName() => switch (this) {
    female => Translate.s.female,
    male => Translate.s.male,
    other => Translate.s.other,
  };

  static String getGenderName(int? id) {
    switch (id) {
      case 1:
        return Translate.s.female;
      case 2:
        return Translate.s.male;
      default:
        return Translate.s.other; // Optional default case
    }
  }
  static ProfileGenderEnum getGenderEnum(int? id) {
    switch (id) {
      case 1:
        return ProfileGenderEnum.female;
      case 2:
        return ProfileGenderEnum.male;
      default:
        return ProfileGenderEnum.other;
    }
  }

  static int getGenderEnumNByName(String? name) {
    switch (name) {
      case "Female":
        return 1;
      case "Male":
        return 2;
      default:
        return 3;
    }
  }
}