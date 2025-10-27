import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeAnimationWidget extends StatelessWidget {
  final Widget child;
  final Duration? delay;

  const FadeAnimationWidget({super.key, required this.child, this.delay});

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      animate: true,
      delay: delay??const Duration(milliseconds: 300),
      child: child,
    );
  }
}
