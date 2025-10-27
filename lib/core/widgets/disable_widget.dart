import 'package:flutter/material.dart';

class DisableWidget extends StatelessWidget {
  final bool isDisable;
  final bool? ignoring;
  final bool ignorePointerWhenDisable;
  final double? opacity;
  final Widget child;

  const DisableWidget({
    super.key,
    required this.isDisable,
    required this.child,
    this.ignorePointerWhenDisable = true,
    this.opacity,
    this.ignoring,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: ignoring ?? (ignorePointerWhenDisable ? isDisable : false),
      child: Opacity(
        opacity: opacity ?? (isDisable ? 0.3 : 1.0),
        child: child,
      ),
    );
  }
}
