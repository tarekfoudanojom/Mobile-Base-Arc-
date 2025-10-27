import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinFieldWidget extends StatelessWidget {
  final Function(String) onComplete;
  final EdgeInsetsGeometry? margin;
  final void Function(String)? onChanged;
  final TextEditingController controller;

  const PinFieldWidget({
    super.key,
    required this.onComplete,
    this.margin,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PinCodeTextField(
          enablePinAutofill: true,
          controller: controller,
          length: 4,
          cursorWidth: 1,
          cursorHeight: 20,
          autoFocus: true,
          appContext: context,
          cursorColor: context.colors.appColorBlue,
          keyboardType: TextInputType.number,
          textStyle: AppTextStyle.s16_w600(color: context.colors.black),
          onChanged: onChanged,
          backgroundColor: Colors.transparent,
          animationType: AnimationType.fade,
          hintCharacter: "-",
          mainAxisAlignment: MainAxisAlignment.center,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(12),
            fieldHeight: 56,
            fieldWidth: 48,
            fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 10),
            selectedBorderWidth: 1,
            inactiveBorderWidth: 1,
            activeBorderWidth: 1,
            inactiveColor: context.colors.white,
            activeColor: context.colors.grey.withValues(alpha: .1),
            selectedColor: context.colors.appColorBlue,
            selectedFillColor: Colors.white,
            inactiveFillColor: Colors.white,
            activeFillColor: Colors.white,
            disabledColor: context.colors.blackOpacity,
          ),
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          onCompleted: onComplete,
        ),
      ),
    );
  }
}
// @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: margin ?? const EdgeInsets.symmetric(horizontal: 20),
//       child: Directionality(
//         textDirection: TextDirection.ltr,
//         child: PinCodeTextField(
//           controller: controller,
//           length: 4,
//           cursorWidth: 1,
//           cursorHeight: 20,
//           appContext: context,
//           cursorColor: context.colors.appColorBlue,
//           keyboardType: TextInputType.number,
//           textStyle: AppTextStyle.s16_w600(color: context.colors.black),
//           onChanged: onChanged,
//           backgroundColor: Colors.transparent,
//           animationType: AnimationType.fade,
//           hintCharacter: "_",
//           mainAxisAlignment: MainAxisAlignment.center,
//           pinTheme: PinTheme(
//             shape: PinCodeFieldShape.box,
//             borderRadius: BorderRadius.circular(12),
//             fieldHeight: 56,
//             fieldWidth: 48,
//             fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 10),
//             selectedBorderWidth: 1,
//             inactiveBorderWidth: 1,
//             activeBorderWidth: 1,
//             inactiveColor: context.colors.white,
//             activeColor: context.colors.grey.withValues(alpha: .2),
//             selectedColor: context.colors.appColorBlue,
//             selectedFillColor: context.colors.white,
//             activeFillColor: context.colors.white,
//             disabledColor: context.colors.blackOpacity,
//           ),
//           animationDuration: const Duration(milliseconds: 300),
//           enableActiveFill: true,
//           onCompleted: onComplete,
//         ),
//       ),
//     );
