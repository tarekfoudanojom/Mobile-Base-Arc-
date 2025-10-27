import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';

import '../../../../core/theme/text/app_text_style.dart';

class PasswordFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final ObsValue<bool> passwordVisibleObs;
  final dynamic Function(String?) validate;
  final dynamic Function(String)? onChange;
  final double? horizontalMargin;

  const PasswordFieldWidget({
    super.key,
    required this.controller,
    required this.passwordVisibleObs,
    required this.validate,
    this.horizontalMargin = 16,
    this.onChange,
  });

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: widget.passwordVisibleObs,
      builder: (context, value) {
        return GenericTextField(
          controller: widget.controller,
          validate: widget.validate,
          hint: Translate.s.label_password,
          onChange: widget.onChange,
          fillColor: context.colors.white,
          hintTextStyle: AppTextStyle.s20_w500(color: context.colors.hintGaryColor),
          inputStyle: AppTextStyle.s20_w500(color: context.colors.black),
          focusNode: _focusNode,
          type: TextInputType.text,
          action: TextInputAction.done,
          fieldTypes: value ? FieldTypes.normal : FieldTypes.password,
          enableBorderColor: Colors.transparent,
          focusBorderColor: Colors.transparent,
          maxLength: 100,
          // focusBorderColor: context.colors.primary,
          margin: EdgeInsets.symmetric(
            horizontal: widget.horizontalMargin!,
            vertical: 12,
          ),
          contentPadding: Dimens.paddingH16V10PX,
          suffixIcon: GestureDetector(
            onTap: () {
              widget.passwordVisibleObs.setValue(!value);
              _focusNode.unfocus();
            },
            child: suffixIcon(context, value),
          ),
        );
      },
    );
  }

  Widget suffixIcon(BuildContext context, bool value) {
    return value
        ? Icon(Icons.visibility_outlined,
            color: context.colors.black.withValues(alpha: .7), size: 30)
        : Icon(Icons.visibility_off,
            color: context.colors.black.withValues(alpha: .7), size: 30);
    // : Padding(
    //     padding: const EdgeInsets.all(15),
    //     child: SvgPicture.asset(Res.closeEyeIcon));
  }
}
