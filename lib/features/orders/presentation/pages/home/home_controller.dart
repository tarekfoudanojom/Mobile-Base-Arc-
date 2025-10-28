part of 'home_imports.dart';

class HomeController {
  final ObsValue<int> currentTabIndexObs = ObsValue<int>.withInit(0);

  void changeTab(int index) {
    currentTabIndexObs.setValue(index);
  }

  void dispose() {
    // Dispose resources if needed
  }
}

