import 'dart:async';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/amplitude/amplitude.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/service_filter_cubit/service_filter_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/app_link_helper.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/local_images_cache.dart';
import 'package:flutter_tdd/core/helpers/remote_config_helper.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/env/app_env_type.dart';
import 'package:flutter_tdd/env/environment_config_reader.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:flutter_tdd/features/base/domain/models/tabs_model.dart';
import 'package:flutter_tdd/features/base/presentation/pages/force_update/force_update_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/more/more_page_imports.dart';
import 'package:flutter_tdd/res.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';


part 'home.dart';
part 'home_controller.dart';
