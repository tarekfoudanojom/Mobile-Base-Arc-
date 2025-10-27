enum SortBy {
  priceHighToLow,
  priceLowToHigh,
  followerHighToLow,
  followerLowToHigh,
  newest,
  collaborations,
  discounts,
  viewed,
  hasService
}

extension SortByExt on SortBy {
  String get value {
    switch (this) {
      case SortBy.priceHighToLow:
        return "PRICEHIGHTOLOW";
      case SortBy.priceLowToHigh:
        return "PRICELOWTOHIGH";
      case SortBy.followerHighToLow:
        return "FOLLOWERHIGHTOLOW";
      case SortBy.followerLowToHigh:
        return "FOLLOWERLOWTOHIGH";
      case SortBy.newest:
        return "NEWEST";
      case SortBy.collaborations:
        return "COLLABORATIONS";
      case SortBy.discounts:
        return "DISCOUNTS";
      case SortBy.viewed:
        return "VIEWED";
      case SortBy.hasService:
        return "HASSERVICES";
    }
  }
}

class InfluencerRequest {
  final int? pageNo;
  final int? limit;
  final String? sortBy;
  final List<int>? skillId;
  final List<int>? socialPlatforms;
  final Range? followersRange;
  final Range? priceRange;
  final int? gender;
  final int? countryID;
  final List<int>? cityID;
  final int? mawthooqStatus;
  final List<int>? tagId;
  final Range? ageRange;
  final bool? isFavoriteOnly;
  final bool? hasDiscount;
  final bool? collaboratedBefore;
  final bool? viewedBefore;
  final String? agentName;
  final String? search;

  InfluencerRequest({
    this.pageNo,
    this.limit,
    this.sortBy,
    this.skillId,
    this.socialPlatforms,
    this.followersRange,
    this.priceRange,
    this.gender,
    this.countryID,
    this.cityID,
    this.mawthooqStatus,
    this.tagId,
    this.ageRange,
    this.isFavoriteOnly,
    this.hasDiscount,
    this.collaboratedBefore,
    this.agentName,
    this.viewedBefore,
    this.search,
  });

  /// Convert to query params
  String toQueryParam() {
    final Map<String, dynamic> params = {};

    if (pageNo != null) params['page_no'] = pageNo;
    if (limit != null) params['limit'] = limit;
    params['sort_by'] = sortBy ?? SortBy.followerHighToLow.value;
    if (skillId != null && skillId!.isNotEmpty) {
      params['skill_id'] = skillId!.join(',');
    }
    if (viewedBefore != null) params['viewed_before'] = viewedBefore;
    if (socialPlatforms != null) params['social_platforms'] = socialPlatforms?.join(',');
    if (followersRange != null) {
      params['followers_range'] =
          '[{"followers_range_start":"${followersRange!.start}","followers_range_end":"${followersRange!.end}"}]';
    }
    if (priceRange != null) {
      params['price_range'] =
          '[{"price_range_start":"${priceRange!.start}","price_range_end":"${priceRange!.end}"}]';
    }
    if (gender != null) params['gender'] = gender;
    if (countryID != null) params['countryID'] = countryID;
    if (cityID?.isNotEmpty == true) params['cityID'] = cityID?.join(',');
    if (mawthooqStatus != null) params['mawthooq_status'] = mawthooqStatus;
    if (tagId != null && tagId!.isNotEmpty) {
      params['tag_id'] = tagId!.join(',');
    }
    if (ageRange != null) {
      params['age_range'] =
          '[{"age_range_start": ${ageRange!.start}, "age_range_end": ${ageRange!.end}}]';
    }
    if (isFavoriteOnly == true) params['isFavoriteOnly'] = true;
    if (hasDiscount == true) params['has_discount'] = true;
    if (collaboratedBefore == true) params['collaborated_before'] = true;
    if (agentName != null) params['agentName'] = agentName;
    if (search != null && search!.isNotEmpty) params['search'] = search;
    if (search != null && search!.isNotEmpty) params['agentName'] = search;

    return params.entries
        .map((e) => "${e.key}=${Uri.encodeComponent(e.value.toString())}")
        .join("&");
  }
}

class Range {
  final int start;
  final int end;

  Range(this.start, this.end);
}
