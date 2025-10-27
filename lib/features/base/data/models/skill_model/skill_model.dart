import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/bloc/device_cubit/device_cubit.dart';
import '../../../../../core/helpers/di.dart';
import '../../../../../core/helpers/global_context.dart';
part 'skill_model.freezed.dart';
part 'skill_model.g.dart';

@unfreezed
class SkillModel with _$SkillModel {
  const SkillModel._();

  @JsonSerializable(explicitToJson: true)
  factory SkillModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'name_ar') required String nameAr,
    @JsonKey(name: 'number_of_stars') dynamic numberOfStars,
    @JsonKey(name: 'status') num? status,
    @JsonKey(name: 'selected', defaultValue: false) bool? selected,
  }) = _SkillModel;

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);

  String get getName {
    var context = getIt<GlobalContext>().context();
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? name : nameAr);
  }
}
