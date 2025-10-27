import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_item_model.freezed.dart';
part 'portfolio_item_model.g.dart';

@freezed
class PortfolioItemModel with _$PortfolioItemModel{
  const PortfolioItemModel._();
  @JsonSerializable(explicitToJson: true)
  factory PortfolioItemModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "profile_id") required int profileId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "timestamp") String? timestamp,
    @JsonKey(name: "last_update") String? lastUpdate,
    @JsonKey(name: "filename") String? filename,
    @JsonKey(name: "company_id") int? companyId,
    @JsonKey(name: "display_order") int? displayOrder,
    @JsonKey(name: "public_status") int? publicStatus,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "company_name") String? companyName,
    @JsonKey(name: "company_name_ar") String? companyNameAr,
    @JsonKey(name: "company_filename") String? companyFilename,
  }) = _PortfolioItemModel;


  factory PortfolioItemModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioItemModelFromJson(json);

  String get getCompanyName{
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return (lang == "ar" ? companyNameAr : companyName)??"";
  }

//   String get _getCompanyArabicName{
//     if(companyNameAr == null || companyNameAr!.isEmpty){
//       return companyName!;
//   }else{
//       return companyNameAr!;
//   }
// }

}