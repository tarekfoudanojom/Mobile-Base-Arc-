import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class CustomInputDecoration extends InputDecoration {
  final String lang;
  final String? labelTxt;
  final Widget? labelWidget;
  final AlignmentGeometry? labelAlignment;
  final String? hintString;
  final Widget? prefIcon;
  final Widget? sufIcon;
  final Color? enableColor;
  final Color? focsColor;
  final Color? hintColor;
  final Color? customFillColor;
  final Color? labelColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final TextStyle? hintTextStyle;
  final TextStyle? labelTextStyle;
  final Widget? suffixWidget;
  final InputBorder? enableBorder;
  final InputBorder? focusBorder;
  final BoxConstraints? prefixIconConstraint;
  final BoxConstraints? suffixIconConstraintsValue;
  final double? borderWidth;
  final String? helperString;
  final TextStyle? helperTextStyle;
  final int? helperTextMaxLines;
  final InputBorder? internalErrorBorder;
  final TextStyle? errorTextStyle;
  const CustomInputDecoration(
      {required this.lang,
        this.hintString,
        this.labelAlignment,
        this.labelTxt,
        this.labelWidget,
        this.prefIcon,
        this.sufIcon,
        this.hintColor,
        this.customFillColor,
        this.enableColor,
        this.focsColor,
        this.borderRadius,
        this.hintTextStyle,
        this.suffixWidget,
        this.padding,
        this.enableBorder,
        this.focusBorder,
        this.labelColor,
        this.labelTextStyle,
        this.borderWidth,
        this.suffixIconConstraintsValue,
        this.prefixIconConstraint,
        this.helperString,
        this.helperTextStyle,
        this.helperTextMaxLines,
        this.internalErrorBorder,
        this.errorTextStyle})
      : super();

  @override
  InputBorder get enabledBorder =>
      enableBorder ??
          OutlineInputBorder(
            borderSide: BorderSide(
              color: enableColor ?? Colors.transparent, 
              width: borderWidth ?? 1,
            ),
            borderRadius: borderRadius ?? BorderRadius.circular(10),
          );

  @override
  InputBorder get focusedBorder =>
      focusBorder ??
          OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: focusColor ?? AppColors.noContextInstance.greyWhite,
                  width: borderWidth ?? 1));

  @override
  InputBorder get errorBorder =>
      internalErrorBorder ??
          OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1),
              borderRadius: borderRadius ?? BorderRadius.circular(10));

  @override
  InputBorder get focusedErrorBorder =>
      internalErrorBorder ??
          OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red, width: 1));

  @override
  TextStyle get errorStyle =>
      errorTextStyle ??
          AppTextStyle.s12_w400(color: AppColors.fixedColors.red);

  @override
  String? get hintText => hintString;

  @override
  int? get errorMaxLines => 3;

  @override
  Widget? get label =>
      labelWidget ??
          (labelTxt == null
              ? super.label
              : Align(
            alignment: labelAlignment ?? Alignment.centerLeft,
            child: Text(
              labelTxt ?? "",
              style: labelStyle,
            ),
          ));

  @override
  TextStyle get labelStyle =>
      labelTextStyle ??
          AppTextStyle.s16_w400(
              color: labelColor ?? AppColors.noContextInstance.hintGaryColor);

  @override
  TextStyle? get hintStyle =>
      hintTextStyle ??
          AppTextStyle.s16_w400(
              color: hintColor ?? AppColors.noContextInstance.hintGaryColor);

  @override
  EdgeInsetsGeometry get contentPadding =>
      padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 18);

  @override
  bool get filled => true;

  @override
  Color get fillColor => customFillColor ?? Colors.transparent;

  @override
  bool get alignLabelWithHint => false;

  @override
  Widget? get suffixIcon => sufIcon;

  @override
  Widget? get suffix => suffixWidget;

  @override
  Widget? get prefixIcon => prefIcon;

  @override
  Color? get focusColor => focsColor;

  @override
  bool? get isDense => true;

  @override
  BoxConstraints? get prefixIconConstraints => prefixIconConstraint;

  @override
  BoxConstraints? get suffixIconConstraints => suffixIconConstraintsValue;
  @override
  String? get helperText => helperString;

  @override
  TextStyle? get helperStyle => helperTextStyle;

  @override
  int? get helperMaxLines => helperTextMaxLines;
}
