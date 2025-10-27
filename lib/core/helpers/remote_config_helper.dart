import 'package:auto_route/auto_route.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

class RemoteConfigHelper {

  RemoteConfigHelper._privateConstructor();

  static final RemoteConfigHelper instance = RemoteConfigHelper._privateConstructor();

  bool showWorkAround = true;
  late FirebaseRemoteConfig _remoteConfig;
  bool _dialogShown = false;

  Future<void> initializeRemoteConfig() async {
    _remoteConfig = FirebaseRemoteConfig.instance;
    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(minutes: 1), // Default is 12 hours
      ),
    );
    // Fetch and activate
    await _fetchRemoteConfig();
    checkAndShowDownloadDialog();
  }

  Future<void> _fetchRemoteConfig() async {
    try {
      await _remoteConfig.fetchAndActivate();
      showWorkAround = _remoteConfig.getBool('show_workaround_brand');
      print("Remote config fetched successfully. showWorkAround: $showWorkAround");
    } catch (e) {
      print("Failed to fetch remote config: $e");
    }
  }

  /// Show download Nojom dialog if showWorkAround is true
  /// This should be called after the app has fully initialized and navigation is ready
  void checkAndShowDownloadDialog() {
    print("===========> showWorkAround: $showWorkAround");
    if (showWorkAround) {
      final context = getIt<GlobalContext>().context();
      AutoRouter.of(context).push(const DownloadNogomDialogRoute());
    }
  }

}