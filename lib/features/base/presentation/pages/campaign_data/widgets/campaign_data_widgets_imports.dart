import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/image_widget.dart';
import 'package:flutter_tdd/core/widgets/smart_button.dart';
import 'package:flutter_tdd/features/base/domain/models/campaign_attach_file_model.dart';
import 'package:flutter_tdd/features/base/presentation/pages/campaign_data/campaign_data_imports.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/res.dart';

import '../../../../../../core/bloc/value_state_manager/value_state_manager_import.dart';
import '../../../../../../core/constants/dimens.dart';
import '../../../../../../core/localization/translate.dart';
import '../../../../../../core/widgets/LoadingButton.dart';

part 'camp_payment_button.dart';
part 'campaign_attached_file_widget.dart';
part 'campaign_attach_file_button_widget.dart';
// part'edit_star_details_bottom_sheet_widget.dart';
