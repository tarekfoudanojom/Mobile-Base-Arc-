import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';

class CityModel {
  int? id;
  String? cityName;
  String? cityNameAr;
  int? stateID;
  num? latitude;
  num? longitude;
  bool? isSelected = false;

  CityModel({
    this.id,
    this.cityName,
    this.cityNameAr,
    this.stateID,
    this.latitude,
    this.longitude,
    this.isSelected = false,
  });

  CityModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cityName = json['cityName'];
    cityNameAr = json['cityNameAr'];
    stateID = json['stateID'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cityName'] = cityName;
    data['cityNameAr'] = cityNameAr;
    data['stateID'] = stateID;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['isSelected'] = isSelected;
    return data;
  }

  String get getCityName{
    var context = getIt<GlobalContext>().context();
    return context.isArabic? cityNameAr??cityName??'' : cityName??cityNameAr??'';
  }

}
