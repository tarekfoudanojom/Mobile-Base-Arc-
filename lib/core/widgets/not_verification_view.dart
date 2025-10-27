import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';

import '../constants/gaps.dart';
import '../theme/text/app_text_style.dart';

class NotVerificationView extends StatelessWidget {
  final String? assetImage;
  final double? imageSize;
  final String? title;
  final String? subTitle;

  const NotVerificationView({
    super.key,
    this.assetImage,
    this.title,
    this.subTitle,
    this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => await getIt<UserServicesHelper>().handleRouteToCompleteSignup(context),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(assetImage ?? Res.notVerifiedIcon, height: imageSize ?? 95, width: imageSize ?? 95),
                  Gaps.vGap20,
                  Text(
                    title ?? Translate.s.complete_your_data,
                    style: AppTextStyle.s20_w600(color: context.colors.black),
                  ),
                  Gaps.vGap8,
                  Text(
                    subTitle ?? Translate.s.complete_data_submit_verification,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.s15_w500(color: context.colors.blackOpacity).copyWith(
                      height: 1.2,
                      letterSpacing: .3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
