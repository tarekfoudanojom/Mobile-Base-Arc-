import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/features/base/data/models/campaign_agent_model/campaign_agent_model.dart';
import 'package:flutter_tdd/features/base/data/models/star_info_model/star_info_model.dart';
import 'package:flutter_tdd/features/base/domain/enums/header_enum.dart';
import 'package:flutter_tdd/features/base/domain/models/influncer_request_params.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';

class CategoryStarsSections {
  final BaseBloc<List<CampaignAgentModel>> newsBloc = BaseBloc<List<CampaignAgentModel>>();
  final BaseBloc<List<CampaignAgentModel>> businessBloc = BaseBloc<List<CampaignAgentModel>>();
  final BaseBloc<List<CampaignAgentModel>> lifestyleBloc = BaseBloc<List<CampaignAgentModel>>();
  final BaseBloc<List<CampaignAgentModel>> techBloc = BaseBloc<List<CampaignAgentModel>>();

  List<CategoryStarsSectionEnum> sections (bool isLoggedIn){
    if(isLoggedIn){
      return [
        CategoryStarsSectionEnum.news,
      ];
    } else {
      return [
        CategoryStarsSectionEnum.news,
        CategoryStarsSectionEnum.lifestyle,
        CategoryStarsSectionEnum.business,
        CategoryStarsSectionEnum.tech,
      ];

    }
  }

  BaseBloc<List<CampaignAgentModel>> sectionBloc(CategoryStarsSectionEnum section){
    switch(section){
      case CategoryStarsSectionEnum.news:
        return newsBloc;
      case CategoryStarsSectionEnum.business:
        return businessBloc;
      case CategoryStarsSectionEnum.lifestyle:
        return lifestyleBloc;
      case CategoryStarsSectionEnum.tech:
        return techBloc;
    }

  }

  Future<void> onRefresh(CategoryStarsSectionEnum section)async{
    switch(section){
      case CategoryStarsSectionEnum.news:
        return getNewSectionInfluencers(onRefresh: true);
      case CategoryStarsSectionEnum.business:
        return getBusinessSectionInfluencers(onRefresh: true);
      case CategoryStarsSectionEnum.lifestyle:
        return getLifestyleSectionInfluencers(onRefresh: true);
      case CategoryStarsSectionEnum.tech:
        return getTechSectionInfluencers(onRefresh: true);
    }
  }

  void updateStarInAllSections(StarInfoModel? updatedStar){
    void updateStarInBloc(BaseBloc<List<CampaignAgentModel>> bloc){
      if(bloc.hasData){
        var data = bloc.data ?? [];
        var index = data.indexWhere((star) => star.id == updatedStar?.id);
        if(index != -1){
          data[index].isFavorite = updatedStar?.isFavorite ?? data[index].isFavorite;
          bloc.successState(data);
        }
      }
    }
    updateStarInBloc(newsBloc);
    updateStarInBloc(businessBloc);
    updateStarInBloc(lifestyleBloc);
    updateStarInBloc(techBloc);
  }


  Future<void> getNewSectionInfluencers({bool onRefresh = false}) async {
    await _getInfluencers(
      onRefresh: onRefresh,
      starListBloc: newsBloc,
      category: CategoryStarsSectionEnum.news,
    );
  }

  Future<void> getBusinessSectionInfluencers({bool onRefresh = false}) async {
    await _getInfluencers(
      onRefresh: onRefresh,
      starListBloc: businessBloc,
      category: CategoryStarsSectionEnum.business,
    );
  }

  Future<void> getLifestyleSectionInfluencers({bool onRefresh = false}) async {
    await _getInfluencers(
      onRefresh: onRefresh,
      starListBloc: lifestyleBloc,
      category: CategoryStarsSectionEnum.lifestyle,
    );
  }

  Future<void> getTechSectionInfluencers({bool onRefresh = false}) async {
    await _getInfluencers(
      onRefresh: onRefresh,
      starListBloc: techBloc,
      category: CategoryStarsSectionEnum.tech,
    );
  }


  Future<void> _getInfluencers({
    bool onRefresh = false,
    required BaseBloc<List<CampaignAgentModel>> starListBloc,
    required CategoryStarsSectionEnum category,

  }) async {
    if (!onRefresh) {
      starListBloc.loadingState();
    }
    // var influencersParams = GetInfluencersParams(
    //   sortBy:  SortBy.followerHighToLow.value,
    //   cats: [category.id],
    //   limit: 10,
    //   pageNo: 1,
    // );
    //
    //
    // var result = await getIt<BaseRepository>().getInfluencers(influencersParams);
    // result.whenOrNull(
    //   isSuccess: (data) {
    //     final data = result.data?.agents ?? [];
    //     if (starListBloc.hasData && !onRefresh) {
    //       var allData = (starListBloc.data ?? []).map((item) => item).toList();
    //       allData.addAll(data);
    //       starListBloc.successState(allData);
    //     } else {
    //       starListBloc.successState(data);
    //     }
    //   },
    //   isError: (error) {
    //     starListBloc.failedState(error, () {});
    //   },
    // );
  }
}

enum CategoryStarsSectionEnum {
  news,
  lifestyle,
  business,
  tech;

  int get id {
    switch (this) {
      case CategoryStarsSectionEnum.news:
        return 4700;
      case CategoryStarsSectionEnum.lifestyle:
        return 4686;
      case CategoryStarsSectionEnum.business:
        return 4675;
      case CategoryStarsSectionEnum.tech:
        return 4705;
    }
  }

  String get title {
    switch (this) {
      case CategoryStarsSectionEnum.news:
        return Translate.s.news_accounts;
      case CategoryStarsSectionEnum.lifestyle:
        return Translate.s.lifestyle;
      case CategoryStarsSectionEnum.business:
        return Translate.s.business;
      case CategoryStarsSectionEnum.tech:
        return Translate.s.tech;
    }
  }

  StarHeaderKeyEnum get getStarHeaderKeyEnum {
    switch (this) {
      case CategoryStarsSectionEnum.news:
        return StarHeaderKeyEnum.newsCategory;
      case CategoryStarsSectionEnum.lifestyle:
        return StarHeaderKeyEnum.lifestyleCategory;
      case CategoryStarsSectionEnum.business:
        return StarHeaderKeyEnum.businessCategory;
      case CategoryStarsSectionEnum.tech:
        return StarHeaderKeyEnum.techCategory;
    }
  }
}
