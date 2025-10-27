import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/status_bottom_sheet_item.dart';
import 'package:flutter_tdd/features/auth/domain/enums/status_enum.dart';
import 'package:flutter_tdd/features/auth/domain/models/status_model.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/nav_button_widget.dart';

class StatusBottomSheet extends StatelessWidget {
  final ObsValue<StatusEnum> statusObs;
  final void Function()? onPressConfirmCallBack;

  StatusBottomSheet({
    super.key,
    required this.statusObs,
    this.onPressConfirmCallBack,
  }) {
    whileOpiningBottomSheet();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();
    return Container(
      decoration: BoxDecoration(
          color: context.colors.white, borderRadius: const BorderRadius.vertical(top: Radius.circular(12))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gaps.vGap8,
          Center(
            child: Container(
              width: 36,
              height: 5,
              decoration: BoxDecoration(
                  color: context.colors.textGaryColor.withValues(alpha:0.3), borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Gaps.vGap19,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Translate.s.who_can_see,
                  style: AppTextStyle.s17_w600(color: context.colors.textColor),
                ),
                InkWell(
                  onTap: () => AutoRouter.of(context).pop(),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration:
                        BoxDecoration(color: context.colors.textGaryColor.withValues(alpha:0.2), shape: BoxShape.circle),
                    child: Icon(
                      Icons.close_rounded,
                      color: context.colors.deepSlightGray,
                      size: 23,
                    ),
                  ),
                )
              ],
            ),
          ),
          Gaps.vGap9,
          Divider(color: context.colors.background1, thickness: 1.4),
          ObsValueConsumer(
            observable: statusesList,
            builder: (context, value) {
              return Column(
                children: [
                  Gaps.vGap8,
                  ...List.generate(
                    value.length,
                    (index) {
                      return StatusBottomSheetItem(
                        model: value[index],
                        onTap: () => _onSelectItem(value, index),
                        showDivider: index != value.length - 1,
                      );
                    },
                  )
                ],
              );
            },
          ),
          Divider(
            color: context.colors.background1,
            thickness: 1.2,
          ),
          NavButtonWidget(
              activeButtonObs: ObsValue<bool>.withInit(true),
              title: Translate.s.confirm,
              btnKey: btnKey,
              onTap: () => _onPressConfirm(context)),
        ],
      ),
    );
  }

  void _onSelectItem(List<StatusModel> value, int index) {
    for (var element in value) {
      element.isSelected = false;
    }
    value[index].isSelected = true;
    statusesList.setValue(value);
    statusesList.refresh();
  }

  void _onPressConfirm(BuildContext context) {
    for (var item in statusesList.getValue()) {
      if (item.isSelected == true) {
        statusObs.setValue(item.statusEnum);
      }
    }
    AutoRouter.of(context).pop();
    if (onPressConfirmCallBack != null) {
      onPressConfirmCallBack!.call();
    }
  }

  void whileOpiningBottomSheet() {
    statusesList.getValue().map((element) {
      if (element.statusEnum == statusObs.getValue()) {
        element.isSelected = true;
      }
      return element;
    }).toList();
  }

  ObsValue<List<StatusModel>> statusesList = ObsValue<List<StatusModel>>.withInit([
    StatusModel(statusEnum: StatusEnum.public),
    StatusModel(statusEnum: StatusEnum.brandOnly),
    StatusModel(statusEnum: StatusEnum.onlyMy),
  ]);
}
