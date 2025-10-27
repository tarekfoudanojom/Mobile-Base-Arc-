import 'package:flutter/services.dart';

/// TextInputFormatter that trims leading/trailing spaces and prevents multiple consecutive spaces
class TrimAndSingleSpaceFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text;
    
    // If the input is empty, allow it
    if (newText.isEmpty) {
      return newValue;
    }
    
    // Remove leading spaces
    newText = newText.trimLeft();
    
    // Replace multiple consecutive spaces with single space
    newText = newText.replaceAll(RegExp(r'\s{2,}'), ' ');
    
    // Calculate the new cursor position
    int newCursorPosition = newText.length;
    
    // If the cursor was at the end, keep it at the end
    if (newValue.selection.baseOffset == newValue.text.length) {
      newCursorPosition = newText.length;
    } else {
      // Try to maintain relative cursor position
      newCursorPosition = (newText.length * newValue.selection.baseOffset / newValue.text.length).round();
      newCursorPosition = newCursorPosition.clamp(0, newText.length);
    }
    
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newCursorPosition),
    );
  }
}
