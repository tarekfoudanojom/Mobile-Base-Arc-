import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
// class PhoneNumberInputFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
//     String newText = newValue.text.replaceAll(' ', '');
//     String formattedText = '';
//     for (int i = 0; i < newText.length; i++) {
//       if (i > 0 && i % 3 == 0) {
//         formattedText += ' ';
//       }
//       formattedText += newText[i];
//     }
//     return TextEditingValue(
//       text: formattedText,
//       selection: TextSelection.collapsed(offset: formattedText.length),
//     );
//   }
// }

class PhoneNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Remove all existing spaces.
    String newText = newValue.text.replaceAll(' ', '');

    // Define the pattern: alternating 3 and 4.
    List<int> pattern = [2, 3, 4, 4];

    String formattedText = '';
    int patternIndex = 0; // Index to keep track of the pattern.
    int count = 0; // Counter for current group length.

    // Iterate over the input characters.
    for (int i = 0; i < newText.length; i++) {
      formattedText += newText[i];
      count++;

      // Check if the current count has reached the current pattern length.
      if (count == pattern[patternIndex]) {
        if (i != newText.length - 1) {
          formattedText += ' ';
        }
        patternIndex = (patternIndex + 1) %
            pattern.length; // Move to the next group in the pattern.
        count = 0; // Reset the counter for the next group.
      }
    }
    formattedText = formattedText.arabicToEnglishNumbers;
    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

class PhoneNumberTextFormatter extends TextInputFormatter {
  final IsoCode isoCode;

  PhoneNumberTextFormatter({required this.isoCode});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final raw = newValue.text.replaceAll(RegExp(r'\D'), '');

    try {
      final phoneNumber =
          PhoneNumber.parse(raw, destinationCountry: isoCode); // Fix here
      final formatted = phoneNumber.formatNsn();

      return TextEditingValue(
        text: formatted,
        selection: TextSelection.collapsed(offset: formatted.length),
      );
    } catch (e) {
      print(e);
      return newValue;
    }
  }
}
