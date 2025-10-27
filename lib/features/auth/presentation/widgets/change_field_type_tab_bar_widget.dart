import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/selected_item_indicator_widget.dart';
import 'package:flutter_tdd/core/widgets/tab_bar_item_widget.dart';

import '../../../../core/constants/dimens.dart';

class ChangeFieldTypeTabBarWidget extends StatelessWidget {
  final ObsValue<bool> changeSelectedItemObs;
  const ChangeFieldTypeTabBarWidget({
    super.key,
    required this.changeSelectedItemObs,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: changeSelectedItemObs,
      builder: (BuildContext context, value) {
        return Column(
          children: [
            // Gaps.vGap10,
            Container(
              margin: Dimens.paddingH15PX,
              // height: 38.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: context.colors.greyWhite.withValues(alpha: .1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabBarItemWidget(
                    onTab: () => _onTap(context, true),
                    text: Translate.s.new_sign_up,
                    value: value,
                  ),
                  TabBarItemWidget(
                    onTab: () => _onTap(context, false),
                    text: Translate.s.login,
                    value: !value,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void _onTap(BuildContext context, bool newValue) {
    //   textFieldController.clear();
    //   phoneFieldController.clear();
    //   passwordFieldController?.clear();
    changeSelectedItemObs.setValue(newValue);
    changeSelectedItemObs.refresh();
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
