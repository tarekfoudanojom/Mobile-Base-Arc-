import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class PickFileBottomSheetWidget extends StatelessWidget {
  final void Function() onCamera;
  final void Function() onFile;
  final void Function() onGallery;
  const PickFileBottomSheetWidget({super.key, required this.onCamera, required this.onFile, required this.onGallery});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding:  EdgeInsets.only(top: 15.r),
          margin: const EdgeInsets.symmetric(horizontal: 7).r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.colors.background1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gaps.vGap10,
              Text(Translate.s.upload_file,
              style: AppTextStyle.s18_w500(color: context.colors.secondary),
              ),
              // Gaps.vGap10,
              // Text(Translate.s.select_upload_file_option,
              //   style: AppTextStyle.s17_w500(color: context.colors.noFilesColor),
              // ),
              Gaps.vGap10,
              Gaps.line(color: context.colors.slightGray,height: 12),
              _buildActionItem(context,Translate.s.camera,onCamera),
              Gaps.line(thickness: 0.5,color: context.colors.slightGray,height: 12),
              _buildActionItem(context,Translate.s.library,onGallery),
              Gaps.line(color: context.colors.slightGray,height: 12),
              _buildActionItem(context,Translate.s.file,onFile),
              Gaps.vGap5,
            ],
          ),
        ),
        Gaps.vGap10,
        GestureDetector(
          onTap:()=>Navigator.pop(context),
          child: Container(
            padding:  const EdgeInsets.symmetric(vertical: 5).r,
            margin: const EdgeInsets.symmetric(horizontal: 7).r,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.colors.background1,
            ),
            child:  Padding(
              padding: Dimens.paddingAll10PX,
              child: Text(Translate.s.cancel,
                style: AppTextStyle.s20_w600(color: context.colors.appColorBlue,),
              ),
            )
          ),
        ),
        Gaps.vGap15,
      ],
    );
  }

  InkWell _buildActionItem(BuildContext context,String title,  Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title,
                    style: AppTextStyle.s20_w500(color: context.colors.appColorBlue,),
                    )
                  ],
                ),
              ),
    );
  }
}
