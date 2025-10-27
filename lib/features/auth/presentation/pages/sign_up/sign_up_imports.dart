

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:uni_country_city_picker/uni_country_city_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/aes_service.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/features/auth/data/enums/active_acc_enum.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_model/profile_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/active_account_entity.dart';
import 'package:flutter_tdd/features/auth/domain/entity/check_uniqueness_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/profile_verification_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/send_otp_phone_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/sign_up_params.dart';
import 'package:flutter_tdd/features/auth/domain/models/countries_model.dart';
import 'package:flutter_tdd/features/auth/domain/models/country_model.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:flutter_tdd/features/auth/domain/requesters/profile_requester.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_app_bar_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_header_title_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/calling_codes_bottom_sheet_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/continue_with_social_media_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/countires_list_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/country_bottom_sheet_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/nav_button_widget.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'widgets/sign_up_widgets_imports.dart';

part'sign_up.dart';
part'sign_up_controller.dart';