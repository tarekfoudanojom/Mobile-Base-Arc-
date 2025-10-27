extension DoubleExtension on num? {
  String toIntString() {
    if (this == null) {
      return "0";
    }
    return this!.toInt().toString();
  }
}

extension DoubleFormat on double {
  String removeTrailingZeros() {
    if (this == this.toInt()) {
      return toInt().toString(); // e.g., 12.0 -> "12"
    } else if (this * 10 == (this * 10).toInt()) {
      return toStringAsFixed(1); // e.g., 12.1 -> "12.1"
    } else {
      return toStringAsFixed(2); // e.g., 12.33 -> "12.33"
    }
  }

  String customRoundForAnalytics() {
    // If very small, just return original value as string

    if (this < 0.05) {
      return toString();
    }

    if (this >= 1) {
      // Round to nearest whole number
      return (this + 0.5).floor().toString();
    } else {
      // Round to 1 decimal place
      double rounded = (this * 10).round() / 10;
      // Remove ".0" if integer
      return rounded % 1 == 0 ? rounded.toInt().toString() : rounded.toString();
    }
  }
}

extension DoubleSuffixFormatter on double {
  String formattedWithSuffix() {
    if (this >= 1000000) {
      double value = this / 1000000;
      return value % 1 == 0
          ? '${value.toStringAsFixed(0)}M'
          : '${value.toStringAsFixed(1)}M';
    } else if (this >= 1000) {
      double value = this / 1000;
      return value % 1 == 0
          ? '${value.toStringAsFixed(0)}K'
          : '${value.toStringAsFixed(1)}K';
    } else {
      return this % 1 == 0 ? this.toStringAsFixed(0) : this.toStringAsFixed(2);
    }
  }

  String toFormattedString() {
    if (this == this.toInt()) {
      return toInt().toString(); // e.g. 23.0 => "23"
    } else {
      return toStringAsFixed(2)
          .replaceFirst(RegExp(r'\.?0*$'), ''); // e.g. 23.334934 => "23.33"
    }
  }
}
