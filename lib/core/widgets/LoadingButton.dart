import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class LoadingButton extends StatelessWidget {
  final GlobalKey<CustomButtonState> btnKey;
  final String title;
  final Function() onTap;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;
  final double? elevation;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final TextStyle? titleTextStyle;
  final Widget? child;

  const LoadingButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.borderColor,
    this.fontFamily,
    this.fontSize,
    this.width,
    this.height,
    this.fontWeight,
    required this.btnKey,
    this.titleTextStyle,
    this.elevation,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    Color border = color ?? context.colors.primary;
    return Container(
      margin:
          margin ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomButtonAnimation(
            key: btnKey,
            elevation: elevation,
            onTap: onTap,
            width: width ?? MediaQuery.of(context).size.width,
            minWidth: 45,
            height: height ?? 45,
            color: color ?? context.colors.primary,
            borderRadius: borderRadius ?? 10,
            borderSide: BorderSide(color: borderColor ?? border, width: 1),
            loader: Container(
              padding: const EdgeInsets.all(10),
              child: const SpinKitRotatingCircle(color: Colors.white, size: 20),
            ),
            child: child ??
                Text(
                  title,
                  style: titleTextStyle ??
                      AppTextStyle.s12_w500(color: textColor ?? Colors.white)
                          .copyWith(
                        fontFamily: fontFamily,
                        fontWeight: fontWeight,
                        fontSize: fontSize,
                      ),
                ),
          ),
        ],
      ),
    );
  }
}
