import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PartnerQuestionOption extends BaseDomainModel {
  int id;

  String answer;
  String answerAr;
  bool selected = false ;

  PartnerQuestionOption({
    required this.id,
    required this.answer,
    required this.answerAr,
  });

  String getLocalizedAnswer() {
    final context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == "ar") {
      return answerAr;
    } else {
      return answer;
    }
  }
}
