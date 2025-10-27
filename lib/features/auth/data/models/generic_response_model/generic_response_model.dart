import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_response_model.freezed.dart';

part 'generic_response_model.g.dart';

@freezed
class GenericResponseModel with _$GenericResponseModel {
  const GenericResponseModel._();

  @JsonSerializable(explicitToJson: true)
  factory GenericResponseModel({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "messageAr") required String? arMessage,
    @JsonKey(name: "data") dynamic data,
  }) = _GenericResponseModel;

  factory GenericResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GenericResponseModelFromJson(json);

  String get getTranslatedMessage{
    var context = getIt<GlobalContext>().context();
    var currentLang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == ApplicationConstants.langEN ? message : arMessage??"") ?? "";
  }


}
