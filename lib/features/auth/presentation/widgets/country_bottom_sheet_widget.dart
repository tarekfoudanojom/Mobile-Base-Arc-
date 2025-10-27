import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class CountryBottomSheetWidget extends StatelessWidget {
  final String title;
  final Widget bottomSheetList;

  const CountryBottomSheetWidget({
    super.key,
    required this.title,
    required this.bottomSheetList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap20,
          bottomSheetList,
        ],
      ),
    );
  }

}
