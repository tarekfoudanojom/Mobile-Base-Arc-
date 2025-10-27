import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_state.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/cupertino_app_bar.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/base/data/models/service_model/service_model.dart';
import 'package:flutter_tdd/features/base/presentation/pages/add_more_stars/widgets/add_more_stars_widgets_imports.dart';

import '../../../../../core/bloc/base_bloc/base_bloc.dart';
import '../../../../../core/bloc/value_state_manager/value_state_manager_import.dart';
import '../../../../../core/constants/dimens.dart';
import '../../../../../core/helpers/di.dart';
import '../../../../../core/localization/translate.dart';
import '../../../../../core/routes/router_imports.gr.dart';
import '../../../data/models/agent_category_model/agent_category_model.dart';
import '../../../data/models/campaign_agent_model/campaign_agent_model.dart';
import '../../../domain/enities/campaign_agents_params.dart';
import '../../../domain/repositories/base_repository.dart';

part 'add_more_stars.dart';
part 'add_more_stars_controller.dart';