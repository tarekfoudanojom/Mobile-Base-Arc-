import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

import 'dimens.dart';

class Gaps {
  const Gaps._();

  static Widget hGap1 = const SizedBox(width: Dimens.dp1);
  static Widget hGap2 = const SizedBox(width: Dimens.dp2);
  static Widget hGap4 = const SizedBox(width: Dimens.dp4);
  static Widget hGap5 = const SizedBox(width: Dimens.dp5);
  static Widget hGap6 = const SizedBox(width: Dimens.dp6);
  static Widget hGap7 = const SizedBox(width: Dimens.dp7);
  static Widget hGap8 = const SizedBox(width: Dimens.dp8);
  static Widget hGap9 = const SizedBox(width: Dimens.dp9);
  static Widget hGap10 = const SizedBox(width: Dimens.dp10);
  static Widget hGap12 = const SizedBox(width: Dimens.dp12);
  static Widget hGap13 = const SizedBox(width: Dimens.dp13);
  static Widget hGap14 = const SizedBox(width: Dimens.dp14);
  static Widget hGap15 = const SizedBox(width: Dimens.dp15);
  static Widget hGap16 = const SizedBox(width: Dimens.dp16);
  static Widget hGap18 = const SizedBox(width: Dimens.dp18);
  static Widget hGap19 = const SizedBox(width: Dimens.dp19);
  static Widget hGap20 = const SizedBox(width: Dimens.dp20);
  static Widget hGap22 = const SizedBox(width: Dimens.dp22);
  static Widget hGap24 = const SizedBox(width: Dimens.dp24);
  static Widget hGap25 = const SizedBox(width: Dimens.dp25);
  static Widget hGap27 = const SizedBox(width: Dimens.dp27);
  static Widget hGap30 = const SizedBox(width: Dimens.dp30);
  static Widget hGap32 = const SizedBox(width: Dimens.dp32);
  static Widget hGap35 = const SizedBox(width: Dimens.dp35);
  static Widget hGap40 = const SizedBox(width: Dimens.dp40);
  static Widget hGap60 = const SizedBox(width: 70);

  static Widget hGap(int value) => SizedBox(width: value.w);

  static Widget vGap1 = const SizedBox(height: Dimens.dp1);
  static Widget vGap2 = const SizedBox(height: Dimens.dp2);
  static Widget vGap3 = const SizedBox(height: Dimens.dp3);
  static Widget vGap4 = const SizedBox(height: Dimens.dp4);
  static Widget vGap5 = const SizedBox(height: Dimens.dp5);
  static Widget vGap6 = const SizedBox(height: Dimens.dp6);
  static Widget vGap7 = const SizedBox(height: Dimens.dp7);
  static Widget vGap8 = const SizedBox(height: Dimens.dp8);
  static Widget vGap9 = const SizedBox(height: Dimens.dp9);
  static Widget vGap10 = const SizedBox(height: Dimens.dp10);
  static Widget vGap12 = const SizedBox(height: Dimens.dp12);
  static Widget vGap13 = const SizedBox(height: Dimens.dp13);
  static Widget vGap14 = const SizedBox(height: Dimens.dp14);
  static Widget vGap15 = const SizedBox(height: Dimens.dp15);
  static Widget vGap16 = const SizedBox(height: Dimens.dp16);
  static Widget vGap18 = const SizedBox(height: Dimens.dp18);
  static Widget vGap19 = const SizedBox(height: Dimens.dp19);
  static Widget vGap20 = const SizedBox(height: Dimens.dp20);
  static Widget vGap22 = const SizedBox(height: Dimens.dp22);
  static Widget vGap23 = const SizedBox(height: Dimens.dp23);
  static Widget vGap24 = const SizedBox(height: Dimens.dp24);
  static Widget vGap25 = const SizedBox(height: Dimens.dp25);
  static Widget vGap26 = const SizedBox(height: Dimens.dp26);
  static Widget vGap28 = const SizedBox(height: Dimens.dp28);
  static Widget vGap27 = const SizedBox(height: Dimens.dp27);
  static Widget vGap30 = const SizedBox(height: Dimens.dp30);
  static Widget vGap32 = const SizedBox(height: Dimens.dp32);
  static Widget vGap33 = const SizedBox(height: Dimens.dp33);
  static Widget vGap34 = const SizedBox(height: Dimens.dp34);
  static Widget vGap35 = const SizedBox(height: Dimens.dp35);
  static Widget vGap36 = const SizedBox(height: Dimens.dp36);
  static Widget vGap37 = const SizedBox(height: Dimens.dp37);
  static Widget vGap40 = const SizedBox(height: Dimens.dp40);
  static Widget vGap44 = const SizedBox(height: Dimens.dp44);
  static Widget vGap45 = const SizedBox(height: Dimens.dp45);
  static Widget vGap48 = const SizedBox(height: Dimens.dp48);
  static Widget vGap50 = const SizedBox(height: Dimens.dp50);
  static Widget vGap52 = const SizedBox(height: Dimens.dp52);
  static Widget vGap56 = const SizedBox(height: Dimens.dp56);
  static Widget vGap64 = const SizedBox(height: Dimens.dp64);
  static Widget vGap67 = const SizedBox(height: Dimens.dp67);
  static Widget vGap76 = const SizedBox(height: Dimens.dp76);
  static Widget vGap77 = const SizedBox(height: Dimens.dp77);
  static Widget vGap78 = const SizedBox(height: Dimens.dp78);
  static Widget vGap80 = const SizedBox(height: Dimens.dp80);
  static Widget vGap86 = const SizedBox(height: Dimens.dp86);
  static Widget vGap88 = const SizedBox(height: Dimens.dp88);
  static Widget vGap90 = const SizedBox(height: Dimens.dp90);
  static Widget vGap93 = const SizedBox(height: Dimens.dp93);
  static Widget vGap95 = const SizedBox(height: Dimens.dp95);
  static Widget vGap100 = const SizedBox(height: Dimens.dp100);

  static Widget vGap128 = const SizedBox(height: Dimens.dp128);
  static Widget vGap256 = const SizedBox(height: Dimens.dp256);

  static Widget vGap(double value) => SizedBox(height: value);

  static Widget line({Color? color, double? thickness, double? height}) =>
      Divider(
        color: color ?? AppColors.fixedColors.background2,
        thickness: thickness ?? 0.4,
        height: height,
      );

  static const Widget vLine = SizedBox(
    width: 0.6,
    height: 24.0,
    child: VerticalDivider(),
  );
  static Widget lineVertical(
          {Color? color, double? thickness, double? height, double? width}) =>
      SizedBox(
        height: height ?? 24.0,
        child: VerticalDivider(
          color: color ?? AppColors.fixedColors.backGround1,
          thickness: thickness ?? 0.5,
          width: width,
        ),
      );

  static const Widget empty = Offstage(
    offstage: true,
    child: SizedBox.shrink(),
  );
}
