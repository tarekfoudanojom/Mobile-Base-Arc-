import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class FilterIconWidget extends StatelessWidget {
  final void Function() onTap;
  final double allPadding;
  final ObsValue<int> filterCountObs;
  const FilterIconWidget({super.key, required this.onTap,  this.allPadding = 5, required this.filterCountObs});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsetsDirectional.only(end: 16,top: 3),
            padding: EdgeInsets.all(allPadding),
            decoration: BoxDecoration(
              color: context.colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: context.colors.greyWhite),
            ),
            child: SvgPicture.asset(
              Res.filterIcon,
              width: 20,
              height: 20,
              colorFilter:
              ColorFilter.mode(context.colors.textGaryColor, BlendMode.srcIn),
            ),
          ),
        ),
        PositionedDirectional(
          end: 10,
          top: 0,
          child: ObsValueConsumer(
            observable: filterCountObs,
            builder: (context, value) {
              return Visibility(
                visible: value > 0,
                child: Container(
                  padding: Dimens.paddingAll5PX,
                  decoration: BoxDecoration(color: context.colors.appColorBlue, shape: BoxShape.circle),
                  child: Text(
                    value.toString(),
                    style: AppTextStyle.s11_w500(color: context.colors.white),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
