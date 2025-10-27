import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/base/presentation/pages/login/sign_in_bottom_imports.dart';
import 'package:flutter_tdd/res.dart';

class AskLoginButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String? title;
  final String? iconPath;

  const AskLoginButtonWidget({
    super.key,
    this.onTap,
    this.title,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => _buildShowModalBottomSheet(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 20),
        decoration: BoxDecoration(
            color: context.colors.appColorBlue,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(iconPath ?? Res.userLoginIcon),
            Gaps.hGap10,
            Text(
              title ?? Translate.s.login_message,
              style: AppTextStyle.s16_w500(color: context.colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) {
        return SignInBottomSheet();
      },
    );
  }
}
