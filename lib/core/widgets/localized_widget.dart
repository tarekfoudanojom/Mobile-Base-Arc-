import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';

class LocalizedWidget extends StatelessWidget {
  final Widget arElement;
  final Widget enElement;
  const LocalizedWidget({super.key, required this.arElement, required this.enElement});

  @override
  Widget build(BuildContext context) {
    String currentLang = context.watch<DeviceCubit>().state.model.locale.languageCode;
    if (currentLang == ApplicationConstants.langAR) {
      return arElement;
    } else {
      return enElement;
    }
  }
}
