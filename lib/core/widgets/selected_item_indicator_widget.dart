import 'package:flutter/material.dart';

class SelectedItemIndicatorWidget extends StatelessWidget {
  final Color? selectedColor;
  final EdgeInsets margin;
  const SelectedItemIndicatorWidget({super.key, this.selectedColor, required this.margin});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 1.5,
        color: selectedColor,
        margin: margin,
      ),
    );
  }
}
