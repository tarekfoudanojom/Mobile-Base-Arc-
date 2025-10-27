import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';

class TextShimmer extends StatelessWidget {
  final double lineWidthPercent;
  final double? lineHeightPercent;

  const TextShimmer({super.key, this.lineWidthPercent = 0.5, this.lineHeightPercent});

  factory TextShimmer.random({Key? key}) {
    double w = Random().nextDouble();
    if (w < 0.4) w = 0.4;
    return TextShimmer(key: key, lineWidthPercent: w);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          BaseShimmerWidget(
            child: Container(
              width: 200 * lineWidthPercent,
              height: lineHeightPercent ?? 14,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
