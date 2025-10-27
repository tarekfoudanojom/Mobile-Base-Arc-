import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../constants/dimens.dart';
import '../constants/gaps.dart';
import '../helpers/di.dart';
import '../helpers/utilities.dart';
import '../localization/translate.dart';
import '../theme/text/app_text_style.dart';

class ChooseImageType extends StatelessWidget {
  final bool showFile;
  final String? sheetTitle;
  const ChooseImageType({super.key, this.showFile = false, this.sheetTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: Dimens.paddingAll10PX,
          // padding: Dimens.paddingV20PX,
          decoration: BoxDecoration(
            color: context.colors.background1,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: Dimens.paddingV15PX,
                child: Text(
                  sheetTitle ?? Translate.s.choose_profile_image,
                  style: AppTextStyle.s14_w500(color: context.colors.textColor),
                ),
              ),
              Gaps.line(color: context.colors.grey, height: 1),
              InkWell(
                onTap: () async {
                  var result = await getIt<Utilities>().getCameraImage(context);
                  if (result != null) {
                    Navigator.pop(context, result);
                  }
                },
                child: Container(
                  padding: Dimens.paddingV15PX,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Translate.s.camera,
                        style: AppTextStyle.s19_w500(color: context.colors.appColorBlue,),
                      ),
                    ],
                  ),
                ),
              ),
              Gaps.line(color: context.colors.grey, height: 1),
              InkWell(
                onTap: () async {
                  var result = await getIt<Utilities>().getImageGallery(context);
                  if (result != null) {
                    Navigator.pop(context, result);
                  }
                },
                child: Container(
                  padding: Dimens.paddingV15PX,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Translate.s.gallery,
                        style: AppTextStyle.s19_w500(color: context.colors.appColorBlue,),
                      ),
                    ],
                  ),
                ),
              ),
              if (showFile) Gaps.line(color: context.colors.grey, height: 1),
              if (showFile)
                InkWell(
                  onTap: () async {
                    var result = await getIt<Utilities>().getFile(context);
                    if (result != null) {
                      Navigator.pop(context, result);
                    }
                  },
                  child: Container(
                    padding: Dimens.paddingV15PX,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Translate.s.file,
                          style: AppTextStyle.s19_w500(color: context.colors.appColorBlue,),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: double.infinity,
            margin: Dimens.paddingH10PX,
            padding: Dimens.paddingV15PX,
            decoration: BoxDecoration(
              color: context.colors.background1,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: Text(
              Translate.s.cancel,
              style: AppTextStyle.s20_w600(color: context.colors.appColorBlue,),
            ),
          ),
        ),
        Gaps.vGap30,
      ],
    );
  }
}
