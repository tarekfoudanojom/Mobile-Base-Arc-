import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';

/// TextInputFormatter that converts Arabic numbers to English numbers in real-time
class ArabicToEnglishNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Convert Arabic numbers to English numbers
    final convertedText = newValue.text.arabicToEnglishNumbers;
    
    // Only allow numbers and decimal points
    final filteredText = convertedText.replaceAll(RegExp(r'[^0-9.]'), '');
    
    // Ensure only one decimal point
    final parts = filteredText.split('.');
    final finalText = parts.length > 2 
        ? '${parts[0]}.${parts.sublist(1).join('')}'
        : filteredText;
    
    return TextEditingValue(
      text: finalText,
      selection: TextSelection.collapsed(offset: finalText.length),
    );
  }
} 