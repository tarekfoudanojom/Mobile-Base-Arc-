import 'package:flutter/material.dart';

class SectionItemModel {
  final int id;
  final int index;
  final String title;
  bool isHide;
  final Widget?child;


  SectionItemModel( {
    required this.title,
    this.isHide = true,
    required this.id,
    required this.index,
    this.child,
  });
}
