import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class LoadingButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Color? textColor;
  final Color? color;
  final double? borderRadius;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final TextStyle? titleTextStyle;
  final Widget? child;
  final bool isLoading;
  final bool isEnabled;

  const LoadingButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.padding,
    this.width,
    this.height,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.titleTextStyle,
    this.child,
    this.isLoading = false,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      width: width,
      height: height,
      child: CupertinoButton.filled(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 16),
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        disabledColor: isLoading? context.colors.primary : context.colors.greyWhite,
        onPressed: isEnabled && !isLoading ? onTap : null,
        child: isLoading 
            ? CupertinoActivityIndicator(
                color: textColor ?? Colors.white,
              )
            : child ??
                Text(
                  title,
                  style: titleTextStyle ??
                      AppTextStyle.s16_w600(color: textColor ?? Colors.white)
                          .copyWith(
                        fontFamily: fontFamily,
                        fontWeight: fontWeight,
                        fontSize: fontSize,
                      ),
                ),
      ),
    );
  }
}
