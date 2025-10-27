import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/cupertino_app_bar_back_Button.dart';

class CupertinoSliverAppBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  final Widget? largeTitle;
  final Widget? middle;
  final Widget? trailing;
  final bool alwaysShowMiddle;
  final bool automaticallyImplyLeading;
  final bool stretch;
  final String? previousPageTitle;
  final Color? backgroundColor;
  final VoidCallback? handleBackBtnClick;

  const CupertinoSliverAppBar({
    super.key,
    this.largeTitle,
    this.trailing,
    this.middle,
    this.alwaysShowMiddle = false,
    this.automaticallyImplyLeading = true,
    this.stretch = true,
    this.previousPageTitle,
    this.handleBackBtnClick,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      largeTitle: largeTitle,
      backgroundColor: backgroundColor,
      middle: middle,
      alwaysShowMiddle: alwaysShowMiddle,
      stretch: stretch,
      trailing: trailing,
      leading: automaticallyImplyLeading
          ? CupertinoAppBarBackButton(
              previousPageTitle: previousPageTitle,
              handleBackBtnClick: handleBackBtnClick,
            )
          : null,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  bool shouldFullyObstruct(BuildContext context) => true;
}

class CupertinoAppBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  final Color? backgroundColor;
  final bool showDivider;
  final String? previousPageTitle;
  final String? title;
  final bool? showLeading;
  final Widget? trailing;
  final Widget? leading;
  final Widget? middle;
  final bool automaticallyImplyMiddle;
  final VoidCallback? handleBackBtnClick;
  final double height;

  const CupertinoAppBar({
    super.key,
    this.previousPageTitle,
    this.title,
    this.backgroundColor,
    this.showDivider = false,
    this.trailing,
    this.leading,
    this.middle,
    this.showLeading = true,
    this.automaticallyImplyMiddle = true,
    this.handleBackBtnClick,
    this.height = 46.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CupertinoNavigationBar(
          middle: middle ??
              Text(
                title ?? '',
                style: AppTextStyle.s17_w600(color: context.colors.black),
              ),
          backgroundColor: backgroundColor,
          automaticallyImplyMiddle: automaticallyImplyMiddle,
          trailing: trailing,
          padding: EdgeInsetsDirectional.zero,
          leading: leading ??
              Offstage(
                offstage: !showLeading!,
                child: CupertinoAppBarBackButton(
                  previousPageTitle: previousPageTitle,
                  handleBackBtnClick: handleBackBtnClick,
                ),
              ),
          automaticallyImplyLeading: automaticallyImplyMiddle,
        ),
        showDivider? Divider(
          height: 1,
          thickness: 1,
          color: context.colors.divider,
        ): const SizedBox.shrink(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  bool shouldFullyObstruct(BuildContext context) => true;
}
