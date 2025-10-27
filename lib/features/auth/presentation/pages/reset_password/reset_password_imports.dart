import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/data/models/reset_password_model/reset_password_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/reset_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/widgets/reset_password_widgets_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_app_bar_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_header_title_widget.dart';


part 'reset_password.dart';
part 'reset_password_controller.dart';