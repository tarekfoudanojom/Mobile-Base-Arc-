import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/base/domain/models/partner_question_option.dart';

class PartnerQuestion extends BaseDomainModel {
  int id;
  String question;
  String questionAr;
  String? placeHolder;
  int type;
  int page;
  String? answer;
  int? partnershipAnswerID;
  int? countryID;
  TextEditingController? controller ;
  String? hint ;
  List<PartnerQuestionOption>? answersOption;

  PartnerQuestion({
    required this.id,
    required this.question,
    required this.questionAr,
    this.placeHolder,
    this.type = 1,
    this.page = 1,
    this.hint,
    this.answer,
    this.partnershipAnswerID,
    this.countryID,
     this.answersOption
  });

  String localizedQuestion() {
    final context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == 'ar') {
      return questionAr;
    } else {
      return question;
    }
  }
}
