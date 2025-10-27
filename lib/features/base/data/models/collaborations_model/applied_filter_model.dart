class AppliedFilterModel {
  final int? categoryId;
  final String? filterType;

  AppliedFilterModel({
    this.categoryId,
    this.filterType,
  });

  factory AppliedFilterModel.fromJson(Map<String, dynamic> json) {
    return AppliedFilterModel(
      categoryId: json['category_id'],
      filterType: json['filter_type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category_id': categoryId,
      'filter_type': filterType,
    };
  }
}
