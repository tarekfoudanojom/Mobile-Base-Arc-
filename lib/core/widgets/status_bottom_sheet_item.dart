import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/auth/domain/models/status_model.dart';

class StatusBottomSheetItem extends StatelessWidget {
  final StatusModel model;
  final Function() onTap;
  final bool showDivider;
  const StatusBottomSheetItem({super.key,  required this.model, required this.onTap, required this.showDivider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.colors.appColorBlue,
                      width: 1.6,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: model.isSelected
                          ? context.colors.appColorBlue
                          : context.colors.white,
                    ),
                  ),
                ),
                Gaps.hGap14,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.statusEnum.getEnumName(),
                    style: AppTextStyle.s16_w400(color: context.colors.textColor),
                    ),
                    Gaps.vGap10,
                    Text(model.statusEnum.getSubTitle(),
                    style: AppTextStyle.s16_w400(color: context.colors.textGaryColor.withValues(alpha:0.3)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Gaps.vGap10,
        if(showDivider)
        Divider(thickness: 1.3,endIndent: 16,indent: 16,color: context.colors.background1,)
      ],
    );
  }
}
