import 'package:app_links/app_links.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

import '../../features/base/presentation/manager/helpers/start_details_helper.dart';

class AppLinkHelper {
  AppLinkHelper._();

  static final AppLinkHelper instance = AppLinkHelper._();

  final appLinks = AppLinks(); // AppLinks is singleton
  Uri? _lastProcessedUri;
  DateTime? _lastProcessedTime;

  void handleAppLinks() {
    // Handle initial link when app is launched from terminated state
    appLinks.getInitialLink().then((uri) {
      if (uri != null) {
        _processLink(uri, isInitial: true);
      }
    });

    // Handle incoming links when app is running or in background
    appLinks.uriLinkStream.listen((uri) {
      _processLink(uri, isInitial: false);
    });
  }

  void _processLink(Uri uri, {required bool isInitial}) {
    final now = DateTime.now();

    // Prevent duplicate processing of the same URI within 2 seconds
    if (_lastProcessedUri == uri &&
        _lastProcessedTime != null &&
        now.difference(_lastProcessedTime!).inSeconds < 2) {
      return;
    }

    _lastProcessedUri = uri;
    _lastProcessedTime = now;
    _checkLinkPath(uri);
  }

  void _checkLinkPath(Uri? uri) {
    if (uri.toString().contains("campaigns")) {
      var id = uri.toString().split("/").last;
      getCampaignDetails(int.parse(id));
    } else if (uri.toString().contains("agent")) {
      var id = uri.toString().split("/").last;
      getAgentDetails(int.parse(id));
    }
  }

  Future<void> getCampaignDetails(int id) async {
    getIt<LoadingHelper>().showLoadingDialog();
    // await getIt<CampaignsRepositories>().getCampaignById(id, true).then(
    //   (value) {
    //     getIt<LoadingHelper>().dismissDialog();
    //     value.when(
    //       isSuccess: (value) {
    //         if (value != null) {
    //           var context = getIt<GlobalContext>().context();
    //           AutoRouter.of(context).push(OrderDetailsPageRoute(campaignModel: value));
    //         }
    //       },
    //       isError: (error) {},
    //     );
    //   },
    // );
  }

  Future<void> getAgentDetails(int id) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var starData = await StartDetailsHelper.instance.getInfo(id);
    getIt<LoadingHelper>().dismissDialog();

    // Get context after async operation and check if mounted
    var context = getIt<GlobalContext>().context();
    if (context.mounted) {
      await AutoRouter.of(context)
          .push<int>(StarProfileDetailsPageRoute(starModel: starData!, fromServices: true));
    }
  }
}
