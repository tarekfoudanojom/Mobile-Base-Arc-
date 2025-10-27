import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/app_loader_widget.dart';
import 'package:injectable/injectable.dart';

@singleton
class LoadingHelper {
  ObsValue<bool> isShowObs = ObsValue.withInit(false);

  LoadingHelper() {
    EasyLoading.addStatusCallback((status) {
      isShowObs.setValue(status == EasyLoadingStatus.show);
    });
  }

  final int _loadingTimeOutInSecond = 15;

  void showLoadingDialog({bool dismissOnTap = false, ObsValue<int>? loadingPercent}) {
    if (!EasyLoading.isShow) {
      EasyLoading().indicatorWidget = LoadingDialogOverly(loadingPercent: loadingPercent);
      EasyLoading().contentPadding = EdgeInsets.zero;
      EasyLoading.show(
        maskType: EasyLoadingMaskType.clear,
        dismissOnTap: dismissOnTap,
      );
      Future.delayed(Duration(seconds: _loadingTimeOutInSecond), () {
        dismissDialog();
      });
    }
  }

  void dismissDialog() {
    EasyLoading.dismiss();
  }
}

class LoadingDialogOverly extends StatefulWidget {
  final ObsValue<int>? loadingPercent;

  const LoadingDialogOverly({super.key, this.loadingPercent});

  @override
  State<LoadingDialogOverly> createState() => _LoadingDialogOverlyState();
}

class _LoadingDialogOverlyState extends State<LoadingDialogOverly> {
  late ObsValue<int>? loadingPercent;

  @override
  void initState() {
    loadingPercent = widget.loadingPercent;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (loadingPercent != null) {
      return ObsValueConsumer(
          observable: loadingPercent!,
          builder: (context, value) {
            return SizedBox(
              height: 1,
              width: 1,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  /// This stack for preventing the black rectangle behind the loader indicator
                  Positioned(
                    width: AppLoaderSize.large.value,
                    height: AppLoaderSize.large.value,
                    child: Stack(
                      children: [
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: AppLoadingPercentWidget(
                            percent: value,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          });
    }
    const indicator = AppLoaderWidget.largeLogo();
    return SizedBox(
      height: 1,
      width: 1,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          /// This stack for preventing the black rectangle behind the loader indicator
          Positioned(
            width: indicator.size.value,
            height: indicator.size.value,
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                const Material(color: Colors.transparent, child: indicator),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
