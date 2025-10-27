import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/disable_widget.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingCoverWidget extends StatefulWidget {
  final ObsValue<bool> loadingObs;
  final Widget child;

  const LoadingCoverWidget({super.key, required this.loadingObs, required this.child});

  @override
  State<LoadingCoverWidget> createState() => _LoadingCoverWidgetState();
}

class _LoadingCoverWidgetState extends State<LoadingCoverWidget> {
  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<bool>(
        observable: widget.loadingObs,
        builder: (context, value) {
          return Stack(
            alignment: Alignment.center,
            children: [
              DisableWidget(
                opacity: value ? .5 : 1.0,
                isDisable: value,
                child: widget.child,
              ),
              if (value) LoadingAnimationWidget.staggeredDotsWave(size: 20, color: context.colors.black),
            ],
          );
        });
  }
}
