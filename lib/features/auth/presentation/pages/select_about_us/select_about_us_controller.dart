part of 'select_about_us_imports.dart';

class SelectAboutUsController {
  /// observables
  final ObsValue<List<AboutUsItemModel>> aboutUsObs = ObsValue<List<AboutUsItemModel>>.withInit([]);

  void selectAboutUs(AboutUsItemModel item) {
    aboutUsObs.getValue().forEach((element) {
      element.isSelected = false;
    });
    item.isSelected = true;
    aboutUsObs.refresh();
  }

  void onSave(BuildContext context) {
    var list = aboutUsObs.getValue();
    var selectedList = list.where((e)=> e.isSelected == true).toList();
    if(selectedList.isEmpty){
      AutoRouter.of(context).maybePop();
    } else {
      int id = list.firstWhere((element) => element.isSelected == true).id;
      AutoRouter.of(context).maybePop<int>(id);
    }
  }
}
