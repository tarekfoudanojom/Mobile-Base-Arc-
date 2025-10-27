import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/debouncer.dart';
import 'package:flutter_tdd/features/base/data/models/service_model/service_model.dart';
import 'package:flutter_tdd/features/base/data/models/star_info_model/star_info_model.dart';
import 'package:flutter_tdd/features/base/presentation/manager/helpers/start_details_helper.dart';
import 'package:flutter_tdd/features/base/presentation/pages/add_more_stars/add_more_stars_imports.dart';

import '../../../../../../core/constants/dimens.dart';
import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/localization/translate.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../core/widgets/CachedImage.dart';
import '../../../../../../core/widgets/GenericTextField.dart';
import '../../../../../../res.dart';
import '../../../../data/models/campaign_agent_model/campaign_agent_model.dart';

part 'add_stars_search_widget.dart';
part 'add_star_item_widget.dart';