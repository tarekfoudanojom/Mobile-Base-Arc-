import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:intl/intl.dart';

class CampaignAttachFileModel {
  // final File attachedFile;
  final List<File> attachedFile;
  DateTime attachedDate;
  String size;

  CampaignAttachFileModel(
      {required this.attachedFile,
      required this.attachedDate,
      required this.size});

  String formatAttachDate(BuildContext context) {
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    DateFormat formatter = DateFormat("MMM dd, yyyy, hh:mm a", lang);
    return formatter.format(attachedDate);
  }
}
