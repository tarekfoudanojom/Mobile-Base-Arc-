import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget> actions;
  final double? size;
  final bool? showBack;
  final bool? centerTitle;
  final Color? bgColor;
  final TextStyle? txtStyle;
  final void Function()? onBack;
  final Widget? child;
  final double? leadingWidth;
  final PreferredSizeWidget? bottom;

  const DefaultAppBar({
    super.key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.size,
    this.showBack = true,
    this.centerTitle,
    this.onBack,
    this.bgColor,
    this.txtStyle,
    this.child,
    this.leadingWidth,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    var currentLang = context.watch<DeviceCubit>().state.model.locale.languageCode;
    return AppBar(
      bottom: bottom,
      title: child ??
          Text(
            title,
            style: txtStyle ?? (currentLang == 'en' ? AppTextStyle.s18_w700(color: context.colors.black) : AppTextStyle.s18_w600(color: context.colors.black)),
          ),
      centerTitle: centerTitle ?? true,
      systemOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      backgroundColor: bgColor ?? context.colors.white,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      leadingWidth: showBack == true ? (leadingWidth ?? 55) : 10,
      leading: Visibility(
        visible: showBack == true,
        child: leading ??
            IconButton(
              icon: const Icon(Icons.arrow_back, size: 22),
              onPressed: onBack ?? () => AutoRouter.of(context).maybePop(),
            ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size ?? 65);
}
