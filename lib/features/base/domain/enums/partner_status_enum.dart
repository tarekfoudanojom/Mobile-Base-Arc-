import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

enum CompleteStatusEnum {
  start( Colors.red),
  completed( Colors.green);

  const CompleteStatusEnum( this.color);

  // String get getStatusName=>switch(this){
  //   start=> Translate.s.not_started,
  //   completed=> Translate.s.completed,
  // };

  final Color color;
}

extension CompleteStatusEnumExtension on CompleteStatusEnum {
  String get getStatusName=>switch(this){
    CompleteStatusEnum.start=> Translate.s.not_started,
    CompleteStatusEnum.completed=> Translate.s.completed,
  };
}
