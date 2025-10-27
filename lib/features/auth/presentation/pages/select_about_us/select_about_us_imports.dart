import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../../../../core/constants/gaps.dart';
import '../../../../../core/localization/translate.dart';
import '../../../../../core/theme/text/app_text_style.dart';
import '../../../data/models/about_us_item_model/about_us_item_model.dart';
import '../../../domain/entity/signup_info_entity.dart';
import '../../../domain/entity/update_profile_name_params.dart';
import '../../widgets/auth_app_bar_widget.dart';

part 'select_about_us.dart';
part 'select_about_us_controller.dart';