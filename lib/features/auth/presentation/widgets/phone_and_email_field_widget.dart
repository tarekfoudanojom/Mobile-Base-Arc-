import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/phone_number_input_formater.dart';

class PhoneAndEmailFieldWidget extends StatelessWidget {
  final ObsValue<bool> changeFieldTpeObs;
  final ObsValue<String> countryCodeObs;
  final TextEditingController controller;
  final dynamic Function(String)? onChange;
  final void Function()? onPressCountryCode;

  const PhoneAndEmailFieldWidget({
    super.key,
    required this.changeFieldTpeObs,
    required this.controller,
    this.onChange,
    this.onPressCountryCode,
    required this.countryCodeObs,
  });

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return ObsValueConsumer(
      observable: changeFieldTpeObs,
      builder: (context, obsCurrentValue) {
        return GenericTextField(
          controller: controller,
          onChange: onChange,
          textAlign: lang == "en" ? TextAlign.left : TextAlign.right,
          textDirection: TextDirection.ltr,
          fieldTypes: FieldTypes.normal,
          fillColor: context.colors.white,
          action: TextInputAction.next,
          label: obsCurrentValue
              ? Translate.s.label_phone
              : "${Translate.s.label_email} ${Translate.s.or} ${Translate.s.user_name}",
          type: obsCurrentValue ? TextInputType.phone : TextInputType.emailAddress,
          margin: const EdgeInsets.only(right: 16, left: 16, top: 24),
          contentPadding: Dimens.paddingH16V10PX,
          validate: (value) => value?.noValidate(),
          prefixIcon: lang == "en" ? (obsCurrentValue ? prefixIcon(context) : null) : null,
          suffixIcon: lang == "ar" ? (obsCurrentValue ? arSuffixIcon(context) : null) : null,
          inputFormatters: obsCurrentValue ? [PhoneNumberInputFormatter()] : null,
        );
      },
    );
  }

  Widget prefixIcon(BuildContext context) {
    return GestureDetector(
      onTap: onPressCountryCode,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 10, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ObsValueConsumer<String>(
              observable: countryCodeObs,
              builder: (context, value) {
                return Text(
                  value,
                  style: AppTextStyle.s16_w400(color: context.colors.textColor),
                );
              },
            ),
            // Gaps.hGap2,
            Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 20,
              color: context.colors.textGaryColor.withValues(alpha:0.7),
            ),
            Gaps.hGap10,
            Container(
              width: 1,
              height: 20,
              color: context.colors.slightGray,
            )
          ],
        ),
      ),
    );
  }

  Widget arSuffixIcon(BuildContext context) {
    return GestureDetector(
      onTap: onPressCountryCode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 1,
              height: 20,
              color: context.colors.slightGray,
            ),
            Gaps.hGap10,
            Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 20,
              color: context.colors.textGaryColor.withValues(alpha:0.7),
            ),
            ObsValueConsumer<String>(
              observable: countryCodeObs,
              builder: (context, value) {
                return Text(
                  value,
                  style: AppTextStyle.s16_w400(color: context.colors.textColor),
                );
              },
            ),
            // Gaps.hGap2,
          ],
        ),
      ),
    );
  }
}


