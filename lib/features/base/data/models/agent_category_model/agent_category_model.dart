import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/bloc/device_cubit/device_cubit.dart';
import '../../../../../core/helpers/di.dart';
import '../../../../../core/helpers/global_context.dart';

part 'agent_category_model.freezed.dart';

part 'agent_category_model.g.dart';

@freezed
class AgentCategoryModel with _$AgentCategoryModel {
  const AgentCategoryModel._();
  @JsonSerializable(explicitToJson: true)
  factory AgentCategoryModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: 'rating') double? rating,
    @JsonKey(name: "name_ar") String? nameAr,
  }) = _AgentCategoryModel;

  factory AgentCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$AgentCategoryModelFromJson(json);

  String get getCategoryName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar" ? nameAr ?? '' : name ?? '';
  }
}
