import 'package:flutter_tdd/core/localization/translate.dart';

enum CurrencyEnum {
  sar,
  dollar;

  int getEnumValue() => switch (this) {
    dollar => 1,
    sar => 2,
  };

  String getCurrencySign() => switch (this) {
    sar => "(SAR)",
    dollar => "\$",
  };


  String getEnumName() => switch (this) {
    sar => Translate.s.saudi_riyal,
    dollar => Translate.s.dollar,
  };

  static String getCurrencyName(int? id) {
    switch (id) {
      case 1:
        return "\$";
      case 2:
        return "SAR";
      default:
        return "Unknown"; // Optional default case
    }
  }
  static CurrencyEnum getCurrencyEnum(int? id) {
    switch (id) {
      case 1:
        return CurrencyEnum.dollar;
    default:
        return CurrencyEnum.sar;

    }
  }
  static CurrencyEnum getCurrencyEnumByName(String name) {
    switch (name) {
      case "(SAR)":
        return CurrencyEnum.sar;
      case "SAR":
        return CurrencyEnum.sar;
      default:
        return CurrencyEnum.dollar;

    }
  }

}