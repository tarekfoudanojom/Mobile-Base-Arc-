class BankModel {
  int? id;
  String? name;
  String? nameAr;

  bool? isSelected = false;

  BankModel({
    this.id,
    this.name,
    this.nameAr,
    this.isSelected = false,
  });

  BankModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameAr = json['nameAr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nameAr'] = nameAr;
    data['name'] = name;

    data['isSelected'] = isSelected;
    return data;
  }
}
