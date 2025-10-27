import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/base/domain/enums/profile_status_enum.dart';
import 'package:intl/intl.dart';

class AgentModel {
  int? id;
  int? profileId;
  int? companyId;
  int? times;
  int? timesPublicStatus;
  int? displayOrder;
  int? publicStatus;
  int? status;
  DateTime? campaignDate;
  int? campaignDatePublicStatus;
  String? contractStartDate;
  String? contractEndDate;
  int? contractPublicStatus;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? nameAr;
  String? filename;
  String? link;
  String? companyLink;
  String? code;
  ObsValue<ProfileStatusEnum> statusObs =
      ObsValue<ProfileStatusEnum>.withInit(ProfileStatusEnum.public);

  AgentModel({
    this.id,
    this.profileId,
    this.companyId,
    this.times,
    this.timesPublicStatus,
    this.displayOrder,
    this.publicStatus,
    this.status,
    this.campaignDate,
    this.campaignDatePublicStatus,
    this.contractStartDate,
    this.contractEndDate,
    this.contractPublicStatus,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.nameAr,
    this.filename,
    this.link,
    this.companyLink,
    this.code,
    required this.statusObs,
  });

  AgentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profileId = json['profile_id'];
    companyId = json['company_id'];
    times = json['times'];
    timesPublicStatus = json['times_public_status'];
    displayOrder = json['display_order'];
    publicStatus = json['public_status'];
    status = json['status'];
    campaignDate = json['campaign_date'] != null
        ? DateTime.parse(json['campaign_date'] as String)
        : null;
    campaignDatePublicStatus = json['campaign_date_public_status'];
    contractStartDate = json['contract_start_date'];
    contractEndDate = json['contract_end_date'];
    contractPublicStatus = json['contract_public_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    nameAr = json['name_ar'];
    filename = json['filename'];
    link = json['link'];
    companyLink = json['company_link'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['profile_id'] = profileId;
    data['company_id'] = companyId;
    data['times'] = times;
    data['times_public_status'] = timesPublicStatus;
    data['display_order'] = displayOrder;
    data['public_status'] = publicStatus;
    data['status'] = status;
    data['campaign_date'] = campaignDate;
    data['campaign_date_public_status'] = campaignDatePublicStatus;
    data['contract_start_date'] = contractStartDate;
    data['contract_end_date'] = contractEndDate;
    data['contract_public_status'] = contractPublicStatus;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['name'] = name;
    data['name_ar'] = nameAr;
    data['filename'] = filename;
    data['link'] = link;
    data['statusObs'] = statusObs;
    data['company_link'] = companyLink;
    data['code'] = code;
    return data;
  }

  String get getCompanyName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return (lang == "ar" ? (nameAr ?? name) : name) ?? "";
  }

  String? get getCampaignDate {
    if (campaignDate == null) return null;
    return DateFormat('dd/MM/yyyy').format(campaignDate!);
  }
}
