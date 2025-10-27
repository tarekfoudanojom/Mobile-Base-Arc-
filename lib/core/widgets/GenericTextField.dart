import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/input_field_style/custom_input_decoration.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

enum FieldTypes { normal, clickable, readonly, chat, password, rich, disable }

class GenericTextField extends StatefulWidget {
  const GenericTextField(
      {super.key,
        this.labelWidget,
        this.label,
        this.hint,
        required this.fieldTypes,
        this.controller,
        this.focusNode,
        this.margin,
        this.autoFocus = false,
        this.contentPadding,
        this.inputFormatters,
        required this.type,
        this.onTap,
        this.radius,
        this.maxLines,
        this.maxLength,
        this.suffixWidget,
        this.prefixWidget,
        this.textColor,
        this.fillColor,
        this.hintColor,
        this.cursorColor,
        this.labelColor,
        this.prefixIcon,
        this.suffixIcon,
        this.onChange,
        this.textDirection,
        this.labelAlignment,
        this.fontFamily,
        this.autoValidateMode,
        this.onSubmit,
        required this.action,
        this.enableBorderColor,
        this.focusBorderColor,
        required this.validate,
        this.hintTextStyle,
        this.labelTextStyle,
        this.inputStyle,
        this.textAlign,
        this.enableBorder,
        this.focusBorder,
        this.readOnly,
        this.filledBorderColor,
        this.prefixIconConstraint,
        this.canRequestFocus,
        this.borderWidth,
        this.cursorHeight,
        this.suffixIconConstraintsValue,
        this.normalBorder = Colors.transparent,
        this.helperText,
        this.helperTextStyle,
        this.errorBorder,
        this.isAutoDetectUsernameFromUrl = false,
        this.enableSuggestions = false,
        this.autocorrect = false,
        this.helperMaxLines,
        this.addAstric = false,
        this.selectAllOnFocus = true});

  final Widget? labelWidget;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final bool autoFocus;
  final int? maxLines;
  final bool? readOnly;
  final EdgeInsetsGeometry? margin;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType type;
  final TextInputAction action;
  final BorderRadius? radius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final VoidCallback? onTap;
  final Color? enableBorderColor;
  final Color? focusBorderColor;
  final Color? fillColor;
  final Color? hintColor;
  final Color? textColor;
  final Color? cursorColor;
  final Color? labelColor;
  final int? maxLength;
  final Function(String? value) validate;
  final FieldTypes fieldTypes;
  final VoidCallback? onSubmit;
  final ValueChanged<String>? onChange;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autoValidateMode;
  final String? fontFamily;
  final TextDirection? textDirection;
  final TextStyle? hintTextStyle;
  final TextStyle? inputStyle;
  final TextStyle? labelTextStyle;
  final AlignmentGeometry? labelAlignment;
  final InputBorder? enableBorder;
  final InputBorder? focusBorder;
  final BoxConstraints? prefixIconConstraint;
  final BoxConstraints? suffixIconConstraintsValue;
  final bool? canRequestFocus;
  final double? cursorHeight;
  final double? borderWidth;
  final Color normalBorder;
  final String? helperText;
  final TextStyle? helperTextStyle;
  final InputBorder? errorBorder;
  final Color? filledBorderColor;
  final bool isAutoDetectUsernameFromUrl;
  final bool enableSuggestions;
  final bool autocorrect;
  final int? helperMaxLines;
  final bool addAstric;
  final bool selectAllOnFocus;
  @override
  State<GenericTextField> createState() => _GenericTextFieldState();
}

class _GenericTextFieldState extends State<GenericTextField> {
  late final FocusNode _focusNode;
  Color _enableBorderColor = Colors.transparent;
  String _previousText = "";

  @override
  void initState() {
    super.initState();
    _enableBorderColor = widget.normalBorder;
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);

    if (widget.isAutoDetectUsernameFromUrl) {
      widget.controller?.addListener(() {
        final currentText = widget.controller?.text ?? "";

        if (_previousText != currentText && currentText.contains('/')) {
          final lastSegment = _extractLastPathSegment(currentText.trim());
          if (lastSegment != null && lastSegment != currentText) {
            widget.controller?.value = TextEditingValue(
              text: lastSegment,
              selection: TextSelection.collapsed(offset: lastSegment.length),
            );
          }
        }

        _previousText = widget.controller?.text ?? "";
      });
    }
  }

  @override
  void didUpdateWidget(covariant GenericTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.normalBorder != widget.normalBorder) {
      setState(() {
        _enableBorderColor = widget.normalBorder;
      });
    }
  }

  void _onFocusChange() {
    setState(() {
      if (widget.controller?.text.isNotEmpty == true &&
          widget.filledBorderColor != null) {
        _enableBorderColor = widget.filledBorderColor!;
      } else {
        _enableBorderColor = _focusNode.hasFocus
            ? widget.enableBorderColor ?? context.colors.appColorBlue
            : widget.normalBorder;
      }
    });
  }

  void _clearSelection() {
    if (!widget.selectAllOnFocus && widget.controller != null) {
      final text = widget.controller!.text;
      widget.controller!.selection =
          TextSelection.collapsed(offset: text.length);
    }
  }

  String? _extractLastPathSegment(String text) {
    try {
      Uri uri = Uri.parse(text);
      if (uri.pathSegments.isNotEmpty) {
        return uri.pathSegments.last;
      }
    } catch (_) {
      final parts = text.split('/');
      return parts.isNotEmpty ? parts.last : null;
    }
    return null;
  }

  @override
  void dispose() {
    if (widget.focusNode == null) _focusNode.dispose();
    super.dispose();
  }

  List<String> _getAutoFillHints(TextInputType inputType) {
    switch (inputType) {
      case TextInputType.emailAddress:
        return [AutofillHints.email];
      case TextInputType.datetime:
        return [AutofillHints.birthday];
      case TextInputType.phone:
        return [AutofillHints.telephoneNumber];
      case TextInputType.url:
        return [AutofillHints.url];
      case TextInputType.number:
        return []; // No autofill hints for numeric input to prevent suggestions
      default:
        return [AutofillHints.name, AutofillHints.username];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        border: Border.all(
          color: (widget.label == null
              ? widget.enableBorderColor
              : widget.enableBorder?.borderSide.color) ??
              _enableBorderColor,
          width: widget.enableBorder?.borderSide.width ?? 1,
        ),
        borderRadius: widget.radius ?? BorderRadius.circular(10),
      ),
      child: widget.fieldTypes == FieldTypes.clickable
          ? _buildClickableField()
          : _buildFormField(),
    );
  }

  Widget _buildClickableField() {
    return InkWell(
      onTap: widget.onTap,
      child: AbsorbPointer(
        absorbing: true,
        child: _buildFormField(),
      ),
    );
  }

  Widget _buildFormField() {
    return TextFormField(
      controller: widget.controller,
      canRequestFocus: widget.canRequestFocus ?? true,
      keyboardType: widget.type,
      textAlign: widget.textAlign ?? TextAlign.start,
      textInputAction: widget.action,
      keyboardAppearance: Brightness.dark,
      textCapitalization: TextCapitalization.none,
      enableSuggestions: widget.enableSuggestions,
      autocorrect: widget.autocorrect,
      autofocus: widget.autoFocus,
      focusNode: _focusNode,
      textDirection: widget.textDirection,
      enableInteractiveSelection: widget.selectAllOnFocus,
      autovalidateMode:
      widget.autoValidateMode ?? AutovalidateMode.onUserInteraction,
      inputFormatters: widget.inputFormatters ??
          [
            if (widget.maxLength != null)
              LengthLimitingTextInputFormatter(widget.maxLength)
          ],
      enabled: widget.fieldTypes != FieldTypes.disable,
      // maxLength: widget.maxLength,
      autofillHints: widget.type == TextInputType.number
          ? null
          : _getAutoFillHints(widget.type),
      cursorColor: widget.cursorColor,
      cursorHeight: widget.cursorHeight,
      maxLines: widget.fieldTypes == FieldTypes.chat
          ? null
          : widget.fieldTypes == FieldTypes.rich
          ? widget.maxLines
          : 1,
      obscureText: widget.fieldTypes == FieldTypes.password,
      readOnly: widget.readOnly ?? widget.fieldTypes == FieldTypes.readonly,
      onEditingComplete: widget.onSubmit,
      onChanged: widget.onChange,
      onTap: () {
        widget.onTap?.call();
        if (!widget.selectAllOnFocus && widget.controller != null) {
          _clearSelection();
          Future.delayed(const Duration(milliseconds: 1), _clearSelection);
          Future.delayed(const Duration(milliseconds: 10), _clearSelection);
          Future.delayed(const Duration(milliseconds: 50), _clearSelection);
        }
      },
      validator: (value) => widget.validate(value),
      style: widget.inputStyle ??
          AppTextStyle.s17_w500(
            color: widget.textColor ?? context.colors.black,
          ).copyWith(fontFamily: widget.fontFamily, height: 1.7),
      decoration: CustomInputDecoration(
          labelWidget: widget.addAstric == true
              ? Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: widget.label,
                  style:  AppTextStyle.s16_w400(color: widget.labelColor ?? context.colors.textTertiary),
                ),
                 TextSpan(
                  text: '*',
                  style: AppTextStyle.s16_w400(color: context.colors.appColorBlue),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          )
              : widget.labelWidget,
          labelTxt: widget.label,
          labelTextStyle: widget.labelTextStyle,
          hintString: widget.hint,
          labelAlignment:
          widget.labelAlignment ?? AlignmentDirectional.centerStart,
          hintTextStyle: widget.hintTextStyle,
          prefIcon: widget.prefixIcon,
          sufIcon: widget.suffixIcon,
          enableColor: _enableBorderColor,
          focsColor: widget.focusBorderColor,
          customFillColor: widget.fillColor ?? context.colors.white,
          suffixWidget: widget.suffixWidget,
          padding: widget.contentPadding,
          hintColor: widget.hintColor,
          borderRadius: widget.radius,
          enableBorder: widget.label != null ? null : widget.enableBorder,
          focusBorder: widget.focusBorder,
          internalErrorBorder: widget.errorBorder,
          lang: context.watch<DeviceCubit>().state.model.locale.languageCode,
          labelColor: widget.labelColor,
          borderWidth: widget.borderWidth,
          suffixIconConstraintsValue: widget.suffixIconConstraintsValue,
          prefixIconConstraint: widget.prefixIconConstraint,
          helperString: widget.helperText,
          helperTextStyle: widget.helperTextStyle,
          helperTextMaxLines: widget.helperMaxLines),
    );
  }
}
