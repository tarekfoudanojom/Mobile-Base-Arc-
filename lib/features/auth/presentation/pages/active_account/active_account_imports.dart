import 'dart:async';
import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/aes_service.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/auth/data/enums/active_acc_enum.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_model/profile_model.dart';
import 'package:flutter_tdd/features/auth/data/models/verify_code_model/verify_code_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/active_account_entity.dart';
import 'package:flutter_tdd/features/auth/domain/entity/forget_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/profile_verification_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/send_otp_phone_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_email_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_phone_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:flutter_tdd/features/auth/domain/requesters/profile_requester.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_app_bar_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_header_title_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/active_account_widgets_imports.dart';

part 'active_account.dart';
part 'active_account_controller.dart';
