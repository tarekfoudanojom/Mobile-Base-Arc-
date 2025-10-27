import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';

class CountryModel {
  int? id;
  String? countryName;
  String? countryNameAr;
  String? countryCode;
  String? phoneCode;
  bool? isSelected = false;

  CountryModel({
    this.id,
    this.countryName,
    this.countryNameAr,
    this.countryCode,
    this.phoneCode,
    this.isSelected = false,
  });

  CountryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryName = json['countryName'];
    countryNameAr = json['countryNameAr'];
    countryCode = json['countryCode'];
    phoneCode = json['phoneCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['countryName'] = countryName;
    data['countryNameAr'] = countryNameAr;
    data['countryCode'] = countryCode;
    data['phoneCode'] = phoneCode;
    data['isSelected'] = isSelected;
    return data;
  }

  String get getCountryName{
    var context = getIt<GlobalContext>().context();
    var currentLang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang=="en" ? countryName : countryNameAr) ?? "";
  }
}
