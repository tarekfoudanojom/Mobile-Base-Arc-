import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/auth/domain/enums/status_enum.dart';

class AuthHeaderTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String? visibleText;
  final double? paddingFromStart;
  final bool? statusVisible;
  final ObsValue<StatusEnum>? statusObs;
  final void Function()? onSelectStatus;

  const AuthHeaderTitleWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.paddingFromStart = 16,
    this.statusVisible = false,
    this.statusObs,
    this.onSelectStatus,
    this.visibleText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: paddingFromStart!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.s23_w600(color: context.colors.textColor),
          ),
          Gaps.vGap10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subTitle,
                style: AppTextStyle.s16_w400(color: context.colors.textGrayOpacity).copyWith(height: 1.5),
              ),
              Row(
                children: [
                  Text(
                    visibleText ?? "",
                    style: AppTextStyle.s16_w400(color: context.colors.textGrayOpacity).copyWith(height: 1.5),
                  ),
                  Gaps.hGap7,
                  if (statusVisible!)
                    GestureDetector(
                      onTap: onSelectStatus,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        decoration: BoxDecoration(
                          color: context.colors.background1,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            width: 1.5,
                            color: StatusEnum.setColor(statusObs?.getValue(), context),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              statusObs?.getValue().getEnumName() ?? "",
                              style: AppTextStyle.s11_w600(
                                color: StatusEnum.setColor(statusObs?.getValue(), context),
                              ),
                            ),
                            Gaps.hGap2,
                            onSelectStatus != null
                                ? Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 15,
                                    color: context.colors.slightGray,
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

// Color setColor(StatusEnum? value, BuildContext context) {
//   switch (value) {
//     case StatusEnum.public:
//       return context.colors.appColorBlue;
//     case StatusEnum.brandOnly:
//       return context.colors.slightDeepGreen;
//     case StatusEnum.onlyMy:
//       return context.colors.red;
//     default:
//       return context.colors.white;
//   }
// }
}
