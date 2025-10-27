import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneyhash_payment/data/card/card_field_type.dart';
import 'package:moneyhash_payment/src/constants.dart';
import 'package:moneyhash_payment/src/secure_text_field_view_model.dart';
import 'package:moneyhash_payment/vault/card_collector.dart';

class PayTextField extends StatefulWidget {
  final CardForm cardForm;
  final CardFieldType type;
  final bool enabled;
  final bool readOnly;
  final TextStyle? textStyle;
  final String? placeholder;
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
  final TextDirection? textDirection;
  final List<TextInputFormatter>? inputFormatters;
  final Function(bool)? onFocusChange;

  const PayTextField({
    Key? key,
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
    this.textDirection,
    this.inputFormatters,
    this.onFocusChange,
  }) : super(key: key);

  @override
  State<PayTextField> createState() => _SecureTextFieldState();
}

class _SecureTextFieldState extends State<PayTextField> {
  late TextEditingController _controller;
  late SecureTextFieldViewModel _viewModel;
  final _signature = Constants().signature;
  late FocusNode _focusNode;

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
    
    // Initialize focus node
    _focusNode = widget.focusNode ?? FocusNode();
    
    // Add focus listener if onFocusChange is provided
    if (widget.onFocusChange != null) {
      _focusNode.addListener(() {
        widget.onFocusChange!(_focusNode.hasFocus);
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _viewModel.removeListener(_updateTextField);
    // Only dispose focus node if we created it
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
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
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, child) => TextField(
        canRequestFocus: widget.canRequestFocus ?? true,
        autofocus: widget.autofocus ?? false,
        focusNode: _focusNode,
        controller: _controller,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        textDirection: widget.textDirection,
        style: widget.textStyle,
        decoration: widget.decoration ??
            InputDecoration(
              labelText: widget.label,
              hintText: widget.placeholder,
              prefixIcon: widget.leadingIcon,
              suffixIcon: widget.trailingIcon,
              prefix: widget.prefix,
              suffix: widget.suffix,
              helperText: widget.supportingText,
              errorText: widget.errorMessage,
            ),
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        inputFormatters: widget.inputFormatters,
        onChanged: (value) {
          _viewModel.onValueChanged(value);
        },
      ),
    );
  }
}
