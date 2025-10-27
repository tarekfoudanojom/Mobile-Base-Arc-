import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/base/data/models/skill_model/skill_model.dart';
import 'package:flutter_tdd/features/offer/domain/repositories/offer_repository.dart';

part 'service_filter_state.dart';

class ServiceFilterCubit extends Cubit<ServiceFilterState> {
  ServiceFilterCubit() : super( ServiceFilterInitial());


  void onUpdateFilterCategories(List<SkillModel> skillsList) {
    emit(ServiceFilterUpdateState(skillsList,!state.changed,state.tagsModelList));
  }

  void onUpdateFilterTags(List<SkillModel> tagsList) {
    emit(ServiceFilterUpdateState(state.skillModelList,!state.changed,tagsList));
  }

  Future<void> callFilterTags() async {
    if (state.tagsModelList.isEmpty) {
      var result = await getIt<OfferRepository>().getSkills();
      result.whenOrNull(
        isSuccess: (data) {
          onUpdateFilterTags(data!);
        },
      );
    }
  }

  Future<void> getFilterCategories() async {
    if (state.skillModelList.isEmpty) {
      var result = await getIt<OfferRepository>().getServiceCategories();
      result.whenOrNull(
        isSuccess: (data) {
          onUpdateFilterCategories(data!);
        },
      );
    }
  }

}




