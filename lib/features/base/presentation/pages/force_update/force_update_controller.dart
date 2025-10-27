part of 'force_update_imports.dart';

class ForceUpdateController {
  static Future<void> checkVersion(BuildContext context) async {
    final packageInfo = await PackageInfo.fromPlatform();
    final currentVersion = packageInfo.version;

    String? storeVersion;
    String? storeUrl;

    final upgrader = Upgrader();
    await upgrader.initialize();
    storeVersion = upgrader.currentAppStoreVersion ?? 'Unknown';
    storeUrl = upgrader.currentAppStoreListingURL ?? '';

    if (_isVersionGreater(storeVersion, currentVersion)) {
      AutoRouter.of(context).push(ForceUpdateWidgetRoute(storeUrl: storeUrl));
    }
  }

  static bool _isVersionGreater(String newVersion, String currentVersion) {
    List<int> newV =
        newVersion.split('.').map(int.tryParse).whereType<int>().toList();
    List<int> currV =
        currentVersion.split('.').map(int.tryParse).whereType<int>().toList();

    while (newV.length < currV.length) newV.add(0);
    while (currV.length < newV.length) currV.add(0);

    for (int i = 0; i < newV.length; i++) {
      if (newV[i] > currV[i]) return true;
      if (newV[i] < currV[i]) return false;
    }
    return false;
  }
}
