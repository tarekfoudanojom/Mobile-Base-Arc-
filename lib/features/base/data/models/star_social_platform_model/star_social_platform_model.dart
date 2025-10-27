import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'star_social_platform_model.freezed.dart';
part 'star_social_platform_model.g.dart';

@freezed
class StarSocialPlatformModel with _$StarSocialPlatformModel {
  const StarSocialPlatformModel._();

  @JsonSerializable(explicitToJson: true)
  const factory StarSocialPlatformModel({
    @JsonKey(name: "id") required num? id,
    @JsonKey(name: "username") required String? username,
    @JsonKey(name: "followers") required num? followers,
    @JsonKey(name: "social_platform_type_id")
    required num? socialPlatformTypeId,
    @JsonKey(name: "social_platform_id") required num? socialPlatformId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "filename") required String filename,
    @JsonKey(name: "filename_gray") required String filenameGray,
    @JsonKey(name: "web_url") required String webUrl,
    @JsonKey(name: "nameAr") required String nameAr,
    @JsonKey(name: "display_order") num? displayOrder,

    // ✅ Add this field
    @Default(false) bool isSelected,
  }) = _StarSocialPlatformModel;

  factory StarSocialPlatformModel.fromJson(Map<String, dynamic> json) =>
      _$StarSocialPlatformModelFromJson(json);

  String get getPlatFormName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar" ? nameAr : name;
  }
}
