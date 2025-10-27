import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/auth/domain/models/states_model.dart';

class StatesListWidget extends StatelessWidget {
  final BaseBloc<List<StatesModel>> statesBloc;
  final ObsValue<StatesModel>? selectedItemObs;
  final TextEditingController searchController;
  final List<StatesModel> allState;
  final VoidCallback callbackSelectItem;

  const StatesListWidget({
    super.key,
    required this.statesBloc,
    this.selectedItemObs,
    required this.searchController,
    required this.callbackSelectItem,
    required this.allState,
  });

  @override
  Widget build(BuildContext context) {
    final ObsValue<bool> isSearchingObs = ObsValue<bool>.withInit(false);
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    return BaseBlocBuilder(
      bloc: statesBloc,
      onSuccessWidget: (data) {
        List<String> headList =
            data.map((e) => e.getStateName[0]).toSet().toList();
        return Flexible(
          child: Column(
            children: [
              ObsValueConsumer(
                observable: isSearchingObs,
                builder: (context, value) {
                  return GenericTextField(
                    controller: searchController,
                    fieldTypes: FieldTypes.normal,
                    radius: BorderRadius.circular(92),
                    onChange: (value) =>
                        onSearchCountryName(value, currentLang),
                    type: TextInputType.text,
                    hint: Translate.s.search,
                    fillColor: value || searchController.text.isNotEmpty
                        ? context.colors.white
                        : context.colors.background1,
                    action: TextInputAction.done,
                    validate: (value) => value?.noValidate(),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.search,
                        size: 25,
                        color: context.colors.textColor,
                      ),
                    ),
                  );
                },
              ),
              Gaps.vGap37,
              Expanded(
                child: ListView(
                  children: [
                    ...List.generate(
                      headList.length,
                      (index) {
                        final list = _buildHandledList(data, headList, index);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gaps.line(
                                color: context.colors.grayWhite,
                                thickness: 1,
                                height: 0),
                            Gaps.vGap10,
                            Text(
                              headList[index],
                              style: AppTextStyle.s14_w400(
                                  color: context.colors.textGaryColor
                                      .withValues(alpha: 0.4)),
                            ),
                            Gaps.vGap10,
                            ...List.generate(
                              list.length,
                              (index) {
                                var model = list[index];
                                return InkWell(
                                  onTap: () => onSelect(model),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              model.getStateName,
                                              style: AppTextStyle.s16_w400(
                                                  color:
                                                      context.colors.textColor),
                                            ),
                                          ),
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: model.isSelected!
                                                    ? context.colors.textColor
                                                    : context.colors.white),
                                            child: Icon(
                                              Icons.check,
                                              color: context.colors.white,
                                              size: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                      Gaps.vGap20,
                                    ],
                                  ),
                                );
                              },
                            )
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<StatesModel> _buildHandledList(
      List<StatesModel> popularList, List<String> headList, int index) {
    return popularList
        .where((element) => element.getStateName[0] == headList[index])
        .toList();
  }

  void onSelect(StatesModel stateModel) {
    for (var e in statesBloc.data!) {
      e.isSelected = false;
    }
    for (var e in allState) {
      e.isSelected = false;
    }
    statesBloc.successState(statesBloc.data);

    stateModel.isSelected = !stateModel.isSelected!;
    selectedItemObs?.setValue(stateModel);
    statesBloc.successState(statesBloc.data);
    callbackSelectItem.call();
  }

  void onSearchCountryName(String value, String currentLang) {
    if (value.isEmpty) {
      statesBloc.successState(allState);
    } else {
      var countries = allState.where((element) {
        return element.getStateName.toLowerCase().contains(value.toLowerCase());
      }).toList();
      statesBloc.successState(countries);
    }
  }
}
