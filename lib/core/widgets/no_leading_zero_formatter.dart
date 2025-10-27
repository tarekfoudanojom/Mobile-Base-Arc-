import 'package:flutter/services.dart';

/// TextInputFormatter that prevents input from being zero or starting with zero
class NoLeadingZeroFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text;
    
    // If the input is empty, allow it (for deletion)
    if (newText.isEmpty) {
      return newValue;
    }
    
    // If the input is exactly "0", prevent it
    if (newText == '0') {
      return oldValue; // Keep the old value, don't allow "0"
    }
    
    // If the input starts with "0" and has more characters, prevent it
    if (newText.startsWith('0') && newText.length > 1) {
      // If it's "0." for decimal, allow it
      if (newText.startsWith('0.')) {
        return newValue;
      }
      
      // Otherwise, remove the leading zero
      newText = newText.substring(1);
      
      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
    
    // If the input is just "0" followed by a digit (not decimal), prevent it
    if (newText.length == 2 && newText.startsWith('0') && !newText.startsWith('0.')) {
      // Replace with just the second character
      newText = newText.substring(1);
      
      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
    
    return newValue;
  }
}
