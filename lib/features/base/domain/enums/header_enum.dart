import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:flutter_tdd/features/base/presentation/manager/helpers/category_stars_sections.dart';

enum StarHeaderKeyEnum {
  currentCampaigns,
  influencerDiscounts,
  viewedBefore,
  collaboratedWith,
  influencerLocation,
  newsCategory,
  businessCategory,
  lifestyleCategory,
  techCategory,
  services,
  all,
  favorites,
  addStarsToCampaign,
}

extension StarHeaderKeyEnumExt on StarHeaderKeyEnum {
  String title(BuildContext context) {
    var profile = context.watch<ProfileCubit>().state.model;
    switch (this) {
      case StarHeaderKeyEnum.currentCampaigns:
        return Translate.s.current_campaigns;
      case StarHeaderKeyEnum.influencerDiscounts:
        return Translate.s.influencer_discounts;
      case StarHeaderKeyEnum.viewedBefore:
        return Translate.s.viewed_before;
      case StarHeaderKeyEnum.collaboratedWith:
        return Translate.s.collaborated_with;
      case StarHeaderKeyEnum.newsCategory:
        return CategoryStarsSectionEnum.news.title;
      case StarHeaderKeyEnum.businessCategory:
        return CategoryStarsSectionEnum.business.title;
      case StarHeaderKeyEnum.techCategory:
        return CategoryStarsSectionEnum.tech.title;
      case StarHeaderKeyEnum.lifestyleCategory:
        return CategoryStarsSectionEnum.lifestyle.title;
      case StarHeaderKeyEnum.influencerLocation:
        return Translate.s.influencers_in + ( context.isArabic? profile?.cityNameAr??"" : profile?.cityName ?? "");
      case StarHeaderKeyEnum.services:
      case StarHeaderKeyEnum.all:
      case StarHeaderKeyEnum.favorites:
      case StarHeaderKeyEnum.addStarsToCampaign:
        return "";
    }
  }
}
