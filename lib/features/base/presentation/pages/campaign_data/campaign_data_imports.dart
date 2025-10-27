import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/date_formatter.dart';
import 'package:flutter_tdd/features/base/data/models/campaign_model/campaign_model.dart';
import 'package:flutter_tdd/features/base/data/models/service_model/service_model.dart';
import 'package:flutter_tdd/features/base/domain/enities/attachment_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/services_campaign_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/update_star_details_params.dart';
import 'package:flutter_tdd/features/base/domain/models/campaign_attach_file_model.dart';
import 'package:flutter_tdd/features/base/presentation/pages/campaign_data/widgets/campaign_data_widgets_imports.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;

import '../../../../../core/constants/global_imports.dart';
import '../../../../../core/helpers/adaptive_picker.dart';
import '../../../data/models/campaign_agent_model/campaign_agent_model.dart';
import '../../../domain/enities/custom_offer_params.dart';
import '../../../domain/enities/service_params.dart';
import '../../../domain/models/send_custom_offer.dart';
import '../../../domain/repositories/base_repository.dart';

part 'campaign_data.dart';
part 'campaign_data_controller.dart';
