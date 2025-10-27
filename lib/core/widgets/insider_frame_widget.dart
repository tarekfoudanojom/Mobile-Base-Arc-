
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class InsiderFrameWidget extends StatelessWidget {
  final List<Widget> children;
  const InsiderFrameWidget({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colors.slightBlueGray)
      ),
      child: Column(
        children: children,
      )
    );
  }
}
