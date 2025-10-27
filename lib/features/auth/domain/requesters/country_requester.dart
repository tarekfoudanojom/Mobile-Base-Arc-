import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/auth/data/models/country_model/country_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/city_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';

class CountryRequester extends Requester<List<CountryModel>> {
  @override
  Future<void> request({bool fromRemote = true}) async {
    if (hasNoData) {
      loadingState();
    }
    var result = await getIt.get<AuthRepository>().getCountries();
    result.when(
      isSuccess: (data) async {
        // int cityId = 0;
        // data!.where((element) => element.phoneCode == "966").map((e) {
        //   cityId = e.id;
        //   return e;
        // }).toList();
        // print("====cityId====$cityId");
        CityParams params = CityParams(stateId: 2849);
        await getIt.get<AuthRepository>().getCities(params);
        successState(data!);
      },
      isError: (error) {
        failedState(error, () => request(fromRemote: fromRemote));
      },
    );
  }
}
