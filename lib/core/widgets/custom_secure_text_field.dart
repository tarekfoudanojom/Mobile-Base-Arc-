import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:moneyhash_payment/data/card/card_field_type.dart';
import 'package:moneyhash_payment/src/constants.dart';
import 'package:moneyhash_payment/src/secure_text_field_view_model.dart';
import 'package:moneyhash_payment/vault/card_collector.dart';

// import '../../data/card/card_field_type.dart';
// import '../card_collector.dart';

class CustomSecureTextField extends StatefulWidget {
  final CardForm cardForm;
  final CardFieldType type;
  final bool enabled;
  final bool readOnly;
  final TextStyle? textStyle;
  final String? placeholder;
  final String? hint;
  final String? label;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final Widget? prefix;
  final Widget? suffix;
  final String? supportingText;
  final String? errorMessage;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final InputDecoration? decoration;
  final FocusNode? focusNode;
  final bool? canRequestFocus;
  final bool? autofocus;

  const CustomSecureTextField({
    super.key,
    required this.cardForm,
    required this.type,
    this.enabled = true,
    this.readOnly = false,
    this.textStyle,
    this.placeholder,
    this.label,
    this.leadingIcon,
    this.trailingIcon,
    this.prefix,
    this.suffix,
    this.supportingText,
    this.errorMessage,
    this.keyboardType,
    this.textInputAction,
    this.decoration,
    this.focusNode,
    this.canRequestFocus,
    this.autofocus,
    this.hint,
  });

  @override
  State<CustomSecureTextField> createState() => _CustomSecureTextFieldState();
}

class _CustomSecureTextFieldState extends State<CustomSecureTextField> {
  late TextEditingController _controller;
  late SecureTextFieldViewModel _viewModel;
  final _signature = Constants().signature;

  @override
  void initState() {
    super.initState();
    _viewModel = widget.cardForm
        .getCardFormCollector(_signature)
        .getViewModel(widget.type);
    _controller = TextEditingController(text: _viewModel.formattedValue);
    _viewModel.addListener(_updateTextField);
    widget.cardForm
        .getCardFormCollector(_signature)
        .registerField(widget.type, '');
  }

  @override
  void dispose() {
    _controller.dispose();
    _viewModel.removeListener(_updateTextField);
    super.dispose();
  }

  void _updateTextField() {
    _controller.value = TextEditingValue(
      text: _viewModel.formattedValue,
      selection:
          TextSelection.collapsed(offset: _viewModel.formattedValue.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    final String lang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return ListenableBuilder(
        listenable: _viewModel,
        builder: (context, child) => Directionality(
              textDirection: lang == ApplicationConstants.langAR
                  ? TextDirection.ltr
                  : TextDirection.ltr,
              child: GenericTextField(
                fieldTypes: FieldTypes.normal,
                controller: _controller,
                cursorHeight: 18,
                fillColor: context.colors.white,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                textAlign: lang == ApplicationConstants.langAR
                    ? TextAlign.end
                    : TextAlign.end,
                enableBorderColor: Colors.transparent,
                hint: widget.hint,
                inputStyle: widget.textStyle?.copyWith(height: 1.9),
                maxLength: 19,
                inputFormatters: [
                  CardNumberFormatter(),
                  LengthLimitingTextInputFormatter(23)
                ],
                enableBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: context.colors.slightGray.withValues(alpha: .7)),
                ),
                focusBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: context.colors.slightGray.withValues(alpha: .7),
                  ),
                ),
                canRequestFocus: widget.canRequestFocus ?? true,
                autoFocus: widget.autofocus ?? false,
                type: TextInputType.number,
                action: TextInputAction.done,
                validate: (value) => value?.noValidate(),
                onChange: (value) {
                  _viewModel.onValueChanged(value);
                },
              ),
            )
        // builder: (context, child) => TextField(
        //   canRequestFocus: widget.canRequestFocus ?? true,
        //   autofocus: widget.autofocus ?? false,
        //   focusNode: widget.focusNode,
        //   controller: _controller,
        //   enabled: widget.enabled,
        //   readOnly: widget.readOnly,
        //   style: widget.textStyle,
        //   decoration: widget.decoration ??
        //       InputDecoration(
        //         labelText: widget.label,
        //         hintText: widget.placeholder,
        //         prefixIcon: widget.leadingIcon,
        //         suffixIcon: widget.trailingIcon,
        //         prefix: widget.prefix,
        //         suffix: widget.suffix,
        //         helperText: widget.supportingText,
        //         errorText: widget.errorMessage,
        //       ),
        //   keyboardType: widget.keyboardType,
        //   textInputAction: widget.textInputAction,
        //   textDirection:  TextDirection.ltr,
        //   onChanged: (value) {
        //     _viewModel.onValueChanged(value);
        //   },
        // ),
        );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove all non-digit characters
    final text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    // Add space after every 4 digits
    final buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      if (i > 0 && i % 4 == 0) buffer.write(' ');
      buffer.write(text[i]);
    }

    // Handle cursor position
    final string = buffer.toString();
    return TextEditingValue(
      text: string,
      selection: TextSelection.collapsed(offset: string.length),
    );
  }
}
