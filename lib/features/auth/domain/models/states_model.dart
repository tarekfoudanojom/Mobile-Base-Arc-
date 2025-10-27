import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';

class StatesModel {
  int? id;
  String? stateName;
  dynamic stateCode;
  double? latitude;
  double? longitude;
  String? stateNameAr;
  bool? isSelected = false;

  StatesModel({
    this.id,
    this.latitude,
    this.longitude,
    this.stateCode,
    this.stateName,
    this.stateNameAr,
    this.isSelected = false,
  });

  StatesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stateName = json['stateName'];
    stateCode = json['stateCode'];
    stateNameAr = json['stateNameAr'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['stateName'] = stateName;
    data['stateCode'] = stateCode;
    data['stateNameAr'] = stateNameAr;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['isSelected'] = isSelected;
    return data;
  }

  String get getStateName {
    var context = getIt<GlobalContext>().context();
    var currentLang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? stateName : stateNameAr) ?? "";
  }
}
