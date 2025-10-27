import 'dart:ui';

enum SignupInfoType {
  campaignName,
  brandName,
  link,
  name,
  email,
  phone,
  crNumber,
  vat,
  username,
  aboutMe,
  verifyPhoneNumber,
  submitForVerify
}

class SignupInfoEntity {
  final String title;
  final SignupInfoType type;
  String? subTitle;
  final Function()? onTap;
  final Function()? onSubmit;
  final bool showSwitch;
  final bool showSubTitle;
  bool switchValue;
  final String keyName;
  final String? keyName2;
  String? secondValue;
  bool? isOptional;
  final Color? hintColor;
  String? headerLogo;
  String? headerTitle;
  String? headerSubTitle;
  String? pleaseHolder;
  SignupInfoEntity({
    required this.title,
    required this.type,
    this.subTitle,
    this.onTap,
    this.onSubmit,
    this.showSwitch = false,
    this.showSubTitle = true,
    this.switchValue = false,
    required this.keyName,
    this.keyName2,
    this.secondValue,
    this.hintColor,
    this.isOptional,
    this.headerLogo,
    this.headerTitle,
    this.headerSubTitle,
    this.pleaseHolder,
  });

  Map<String, dynamic> toJson() => {
        keyName: subTitle,
        if (keyName2 != null) '$keyName2': secondValue,
      };
}
