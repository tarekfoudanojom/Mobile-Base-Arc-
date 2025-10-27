class CategoryFilterModel {
  final int? categoryId;
  final CategoryNameModel? name;
  final int? companyCount;

  CategoryFilterModel({
    this.categoryId,
    this.name,
    this.companyCount,
  });

  factory CategoryFilterModel.fromJson(Map<String, dynamic> json) {
    return CategoryFilterModel(
      categoryId: json['id'],
      name: json['name'] != null
          ? CategoryNameModel.fromJson(json['name'])
          : null,
      companyCount: json['company_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': categoryId,
      'name': name?.toJson(),
      'company_count': companyCount,
    };
  }
}

class CategoryNameModel {
  final String? en;
  final String? ar;

  CategoryNameModel({
    this.en,
    this.ar,
  });

  factory CategoryNameModel.fromJson(Map<String, dynamic> json) {
    return CategoryNameModel(
      en: json['en'],
      ar: json['ar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'en': en,
      'ar': ar,
    };
  }
}
