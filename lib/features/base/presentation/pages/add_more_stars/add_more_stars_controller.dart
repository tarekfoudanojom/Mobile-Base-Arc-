part of 'add_more_stars_imports.dart';

class AddMoreStarsController {
  /// controllers
  final TextEditingController searchController = TextEditingController();

  /// observers
  final ObsValue<double> serviceButtonObs = ObsValue<double>.withInit(0);

  /// blocs
  final BaseBloc<List<CampaignAgentModel>> starsBloc = BaseBloc<List<CampaignAgentModel>>();

  /// methods
  void fetchData(CampaignAgentModel model) async {
    await getAddStars();
    updateInitialStar(model);
  }

  void initNote(CampaignAgentModel model) {
    model.txtController = TextEditingController();
    model.txtController.text = model.note ?? '';
  }

  Future<void> getAddStars() async {
    // starsBloc.loadingState();
    // var result = await getIt<BaseRepository>().getInfServicesStars(getStarsParams());
    // result.whenOrNull(
    //   isSuccess: (data) {
    //     starsBloc.successState(data!.agents);
    //   },
    //   isError: (error) {
    //     starsBloc.failedState(error, () {});
    //   },
    // );
  }

  void updateInitialStar(CampaignAgentModel model) {
    log('model: $model');
    var stars = starsBloc.data!.map((e) => e).toList();
    var star = stars.firstWhereOrNull((element) => element.id == model.id);
    if (star == null) return;
    stars.remove(star);
    stars.insert(0, model);
    // star.services = model.services;
    // var starServicePrice = 0.0;
    // var allPlatform = model.services!.firstWhere((e) => e.id == -1);
    // if (!allPlatform.selected) {
    //   starServicePrice = star.services!.where((e) => e.selected).fold(
    //         0.0,
    //         (prev, element) => prev + element.price + (element.price * 0.05),
    //       );
    // } else {
    //   starServicePrice = allPlatform.price + (allPlatform.price * 0.05);
    // }
    // star.servicesPrice = starServicePrice;
    serviceButtonObs.setValue(model.servicesPrice);
    serviceButtonObs.refresh();
    starsBloc.successState(stars);
  }

  void onSearch() {
    starsBloc.loadingState();
    getAddStars();
  }

  String getStarCategories(List<AgentCategoryModel> categories) {
    return categories.map((e) => e.name).toList().join(', ');
  }

  void selectService(BuildContext context, int starId, BrandServiceModel model) {
    print("servicePlatformId = ${model.servicePlatformId}");
    if (model.servicePlatformId != -1 && model.servicePlatformId != null) {
      var stars = starsBloc.data!.toList();
      var star = stars.firstWhere((element) => element.id == starId);
      int index = stars.indexOf(star);
      var services = star.services!;
      services[services.indexOf(model)].selected = !services[services.indexOf(model)].selected;
      var starServicePrice = services.where((e) => e.selected).fold(
            0.0,
            (prev, element) => prev + element.price + (element.price * 0.05),
          );
      stars[index] = stars[index].copyWith(servicesPrice: starServicePrice);
      var totalPrice = stars.fold(0.0, (prev, element) {
        return prev + element.servicesPrice;
      });
      serviceButtonObs.setValue(totalPrice);
      serviceButtonObs.refresh();
      starsBloc.successState(stars);
    } else {
      selectAllServices(context, starId, model);
    }
  }

  void selectAllServices(context, starId, BrandServiceModel model) {
    var stars = starsBloc.data!.map((e) => e).toList();
    model.selected = !model.selected;
    var star = stars.firstWhere((element) => element.id == starId);
    int index = stars.indexOf(star);
    var services = star.services!.map((e) {
      e.selected = model.selected;
      return e;
    }).toList();
    if (model.selected) {
      stars[index] = star.copyWith(servicesPrice: model.price + (model.price * 0.05));
    } else {
      stars[index] = star.copyWith(servicesPrice: 0);
    }
    var totalPrice = stars.fold(0.0, (prev, element) {
      return prev + element.servicesPrice;
    });
    serviceButtonObs.setValue(totalPrice);
    serviceButtonObs.refresh();
    stars[index] = stars.firstWhere((element) => element.id == starId).copyWith(services: services);
    starsBloc.successState(stars);
  }

  void navigateToCampaignData(BuildContext context) {
    var selectedStars = starsBloc.data!
        .where((element) => element.services!.where((e) => e.selected == true).isNotEmpty)
        .toList();
    AutoRouter.of(context).push(CampaignDataPageRoute(
        agents: selectedStars, amount: serviceButtonObs.getValue().toString()));
  }

  /// params
  // GetInfluencersParams getStarsParams() {
  //   return GetInfluencersParams(
  //     search: searchController.text != "" ? searchController.text : null,
  //   );
  // }
}
