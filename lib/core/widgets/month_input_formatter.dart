import 'package:flutter/services.dart';

/// TextInputFormatter that formats month input to always show two digits (01, 02, etc.)
class MonthInputFormatter extends TextInputFormatter {
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
    
    // Remove any non-digit characters
    newText = newText.replaceAll(RegExp(r'[^0-9]'), '');
    
    // Limit to 2 digits maximum
    if (newText.length > 2) {
      newText = newText.substring(0, 2);
    }
    
    // If it's a single digit and between 1-9, keep it as is for now
    // We'll format it when user moves to next field or completes input
    if (newText.length == 1) {
      int? digit = int.tryParse(newText);
      if (digit == null || digit < 1 || digit > 9) {
        return oldValue; // Invalid input, keep old value
      }
      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
    
    // If it's two digits, validate month range (01-12)
    if (newText.length == 2) {
      int? month = int.tryParse(newText);
      if (month == null || month < 1 || month > 12) {
        // Invalid month, keep old value
        return oldValue;
      }
      
      // Format to ensure two digits
      String formattedMonth = month.toString().padLeft(2, '0');
      
      return TextEditingValue(
        text: formattedMonth,
        selection: TextSelection.collapsed(offset: formattedMonth.length),
      );
    }
    
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
