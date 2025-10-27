// import 'package:uni_country_city_picker/uni_country_city_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:get_it/get_it.dart';
import 'package:uni_country_city_picker/uni_country_city_picker.dart';

class CallingCodesRequester extends Requester<List<Country>> {
  String? _searchValue;

  @override
  Future<void> request({bool fromRemote = true}) async {
    if (hasNoData) {
      loadingState();
    }
    final uniCountryServices = UniCountryServices.instance;
    var result = await uniCountryServices.getCountriesAndCities();
    successState(result
        .where((e) =>
            (e.name
                .toLowerCase()
                .contains(_searchValue?.toLowerCase() ?? "")) ||
            (e.nameEn
                .toLowerCase()
                .contains(_searchValue?.toLowerCase() ?? "")) ||
            (e.dialCode
                .toLowerCase()
                .contains(_searchValue?.toLowerCase() ?? "")))
        .toList());
  }

  void setSearchValueAndRequest(String value) {
    _searchValue = value;
    request();
  }

  bool get hasSearchValue => _searchValue?.isNotEmpty ?? false;

  List<Country> getPopularCountries() {
    return data
            ?.where((element) =>
                element.dialCode == "+20" || element.dialCode == "+966")
            .toList() ??
        [];
  }
}
