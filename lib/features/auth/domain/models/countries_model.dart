import 'package:flutter_tdd/features/auth/domain/models/country_model.dart';

// import 'package:flutter_tdd/features/auth/data/models/country_model/country_model.dart';

class CountriesModel {
  final String sectionTitle;
  final List<CountryModel> countriesList;
  bool selected = false ;

  CountriesModel({
    required this.sectionTitle,
    required this.countriesList,
  });


  String get selectedCode{
    String countryCode = '';
      for (var country in countriesList) {
        if (country.isSelected==true) {
          return countryCode = country.countryCode;
        }
      }
    return countryCode ;
  }

  String get selectedCity{
    String countryName = '';
    for (var country in countriesList) {
      if (country.isSelected==true) {
        return countryName = country.name;
      }
    }
    return countryName ;
  }

}
