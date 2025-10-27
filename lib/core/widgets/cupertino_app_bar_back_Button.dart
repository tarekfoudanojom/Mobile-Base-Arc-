import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/localized_widget.dart';
import 'package:flutter_tdd/res.dart';

class CupertinoAppBarBackButton extends StatelessWidget {
  final String? previousPageTitle;
  final VoidCallback? handleBackBtnClick;
  final double starSpace;

  const CupertinoAppBarBackButton({
    super.key,
    this.previousPageTitle,
    this.handleBackBtnClick,
    this.starSpace = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (handleBackBtnClick != null) {
          handleBackBtnClick!.call();
        } else {
          AutoRouter.of(context).maybePop();
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Transform.rotate(
              angle: context.isArabic ? 0 : pi,
              child: SvgPicture.asset(
                Res.arrowRight,
                colorFilter: ColorFilter.mode(
                  context.colors.black,
                  BlendMode.srcIn,
                ),
                width: 26,
                height: 26,
              ),
            ),
          )

          // LocalizedWidget(
          //   enElement: Padding(
          //     padding: EdgeInsetsDirectional.only(start: starSpace, end: 10),
          //     child: SvgPicture.asset(
          //       Res.arrowBackEn,
          //       color: context.colors.appColorBlue,
          //       width: 22,
          //       height: 22,
          //     ),
          //   ),
          //   arElement: Padding(
          //     padding: const EdgeInsetsDirectional.only(start: 12),
          //     child: SvgPicture.asset(
          //       Res.arrowBackAr,
          //       color: context.colors.appColorBlue,
          //       width: 25,
          //       height: 30,
          //     ),
          //   ),
          // ),
          // Text(
          //   previousPageTitle ?? Translate.of(context).back,
          //   style: AppTextStyle.s17_w600(
          //     color: context.colors.appColorBlue,
          //   ),
          // ),
        ],
      ),
    );
  }
}
