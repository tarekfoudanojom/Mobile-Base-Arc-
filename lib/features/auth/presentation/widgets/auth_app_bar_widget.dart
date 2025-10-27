import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class AuthAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? showSkipButton;
  final Widget? titleWidget;
  final Function()? onBack;
  final Function()? onSkip;
  final bool showBack;
  final Widget? leading;
  final Widget? skipWidget;
  final double? height;

  const AuthAppBarWidget({
    super.key,
    this.title,
    this.onBack,
    this.onSkip,
    this.showBack = true,
    this.titleWidget,
    this.showSkipButton = false,
    this.leading,
    this.skipWidget,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: title != null
          ? Text(
              title ?? "",
              style: AppTextStyle.s20_w500(color: context.colors.black),
            )
          : titleWidget,
      backgroundColor: Colors.transparent,
      leading: Offstage(
        offstage: !showBack,
        child: InkWell(
          onTap: onBack ?? AutoRouter.of(context).pop,
          child: leading ??
              Icon(
                Icons.arrow_back_ios_new,
                size: 20,
                color: context.colors.black,
              ),
        ),
      ),
      surfaceTintColor: Colors.transparent,
      leadingWidth: 65,
      actions: showSkipButton!
          ? [
              Visibility(
                visible: skipWidget == null,
                replacement: skipWidget ?? const SizedBox(),
                child: GestureDetector(
                  onTap: onSkip,
                  child: Text(Translate.s.skip,
                      style: AppTextStyle.s17_w500(
                          color: context.colors.textGaryColor.withValues(alpha:0.4))),
                ),
              ),
              Gaps.hGap16,
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 65);
}
