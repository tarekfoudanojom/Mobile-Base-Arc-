
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class SliverLoadingIndicatorWidget extends StatelessWidget {
  const SliverLoadingIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 20,
          width: 20,
          margin: const EdgeInsets.only(bottom: 15),
          child: CupertinoActivityIndicator(
              radius: 10,
              color: context.colors.grey.withValues(alpha: .7)
          ),
        ),
      ],
    );
  }
}
