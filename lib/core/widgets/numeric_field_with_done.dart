import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';

/// A wrapper for GenericTextField that adds a Done button toolbar for iOS numeric keyboards
class NumericFieldWithDone extends StatefulWidget {
  final TextEditingController controller;
  final String? hint;
  final String? label;
  final Function(String)? onChange;
  final FocusNode? focusNode;
  final bool autoFocus;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String?) validate;
  final Color? fillColor;
  final Color? normalBorder;
  final Color? focusBorderColor;
  final EdgeInsets? contentPadding;
  final BoxConstraints? suffixIconConstraintsValue;
  final Widget? suffixIcon;
  final TextStyle? labelTextStyle;
  final TextStyle? inputStyle;
  final FieldTypes fieldTypes;
  final TextInputType type;
  final TextInputAction action;
  final int? maxLines;

  const NumericFieldWithDone({
    super.key,
    required this.controller,
    required this.validate,
    this.hint,
    this.label,
    this.onChange,
    this.focusNode,
    this.autoFocus = false,
    this.inputFormatters,
    this.fillColor,
    this.normalBorder,
    this.focusBorderColor,
    this.contentPadding,
    this.suffixIconConstraintsValue,
    this.suffixIcon,
    this.labelTextStyle,
    this.inputStyle,
    this.fieldTypes = FieldTypes.normal,
    this.type = TextInputType.number,
    this.action = TextInputAction.done,
    this.maxLines,
  });

  @override
  State<NumericFieldWithDone> createState() => _NumericFieldWithDoneState();
}

class _NumericFieldWithDoneState extends State<NumericFieldWithDone> {
  late FocusNode _focusNode;
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    
    // Add listener for iOS keyboard toolbar
    if (Platform.isIOS) {
      _focusNode.addListener(_onFocusChange);
    }
  }

  @override
  void dispose() {
    if (Platform.isIOS) {
      _focusNode.removeListener(_onFocusChange);
      _removeOverlay();
    }
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus) {
      _showDoneButton();
    } else {
      _removeOverlay();
    }
  }

  void _showDoneButton() {
    _removeOverlay();
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 0,
        right: 0,
        child: Material(
          color: context.colors.keyboard,
          child: Container(
            height: 44,
            decoration: BoxDecoration(
              color: context.colors.keyboard,
              border: Border(
                top: BorderSide(
                  color: context.colors.keyboard,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CupertinoButton(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  onPressed: () {
                    _focusNode.unfocus();
                  },
                  child: Text(
                    Translate.s.done,
                    style: AppTextStyle.s17_w600(
                      color: context.colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      controller: widget.controller,
      focusNode: _focusNode,
      hint: widget.hint,
      label: widget.label,
      onChange: widget.onChange,
      autoFocus: widget.autoFocus,
      inputFormatters: widget.inputFormatters,
      validate: widget.validate,
      fillColor: widget.fillColor ?? Colors.white,
      normalBorder: widget.normalBorder ?? Colors.grey,
      focusBorderColor: widget.focusBorderColor,
      contentPadding: widget.contentPadding,
      suffixIconConstraintsValue: widget.suffixIconConstraintsValue,
      suffixIcon: widget.suffixIcon,
      labelTextStyle: widget.labelTextStyle,
      inputStyle: widget.inputStyle,
      fieldTypes: widget.fieldTypes,
      type: widget.type,
      action: widget.action,
      maxLines: widget.maxLines,
    );
  }
}
