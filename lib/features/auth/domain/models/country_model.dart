class CountryModel{
  final String name;
  final String countryCode;
  bool isSelected;

  CountryModel({required this.name, required this.countryCode, this.isSelected = false});

}