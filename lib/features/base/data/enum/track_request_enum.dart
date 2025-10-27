import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

enum TrackRequestEnum{
  approved, ///approved(in_progress)
  pending,
  rejected,
  delivered,///completed(but campaign not released)
  completed; ///completed(released)

  Color get getRequestCircelStateColor{
    BuildContext context = getIt<GlobalContext>().context();
    switch(this){
      case approved : return context.colors.green;
      case completed : return context.colors.green;
      case pending : return context.colors.orange;
      case rejected : return context.colors.red;
      case delivered : return context.colors.orange;
    }
  }

  Color get getRequestColor{
    BuildContext context = getIt<GlobalContext>().context();
    switch(this){
      case approved : return context.colors.textColor;
      case completed : return context.colors.textColor;
      case pending : return context.colors.orange;
      case rejected : return context.colors.red;
      case delivered : return context.colors.red;
    }
  }




  String get getEnumValue=> switch(this){
    delivered=> Translate.s.order_delivered,
    pending=> Translate.s.order_requested,
    approved=> Translate.s.order_in_progress,
    completed=> Translate.s.order_completed,
    rejected=> Translate.s.order_canceled,
  };

  Color get getStatusColor{
    BuildContext context = getIt<GlobalContext>().context();
    switch(this){
      case TrackRequestEnum.pending: return context.colors.black;
      case TrackRequestEnum.delivered: return context.colors.orange;
      case TrackRequestEnum.approved: return context.colors.appColorBlue;
      case TrackRequestEnum.completed: return context.colors.green;
      case TrackRequestEnum.rejected: return context.colors.red;
    }
  }

  Color get getContainerColor{
    BuildContext context = getIt<GlobalContext>().context();
    switch(this){
      case TrackRequestEnum.pending: return context.colors.background1;
      case TrackRequestEnum.delivered: return context.colors.orange.withValues(alpha: 0.1);
      case TrackRequestEnum.approved: return context.colors.appColorBlue.withValues(alpha: 0.1);
      case TrackRequestEnum.completed: return context.colors.green.withValues(alpha: 0.1);
      case TrackRequestEnum.rejected: return context.colors.red.withValues(alpha: 0.1);
    }
  }

  int get currentStep=>switch(this){
    pending=> 1,
    approved=> 2,
    delivered=> 3,
    completed=> 4,
    rejected=> 4,
  };
}