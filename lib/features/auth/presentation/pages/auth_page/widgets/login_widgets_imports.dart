import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/LoadingButton.dart';
import 'package:flutter_tdd/core/widgets/phone_number_input_formater.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/change_field_type_tab_bar_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/password_field_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/phone_and_email_field_widget.dart';
import '../../../../../../res.dart';
import '../auth_page_imports.dart';
import '../views/login/login_view_imports.dart';
import '../views/sign_up/sign_up_view_imports.dart';


part 'login_form_widget.dart';
part 'login_button_widget.dart';
part 'create_account_widget.dart';
part'forget_password_widget.dart';
part'footer_text_widget.dart';
part 'auth_social_button.dart';
part 'forget_pass_bottom_sheet_widget.dart';
part 'reset_pass_bottom_sheet_widget.dart';
part 'social_login_buttons.dart';