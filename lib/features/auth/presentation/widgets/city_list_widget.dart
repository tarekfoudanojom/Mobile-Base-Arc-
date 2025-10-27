import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/fade_animation_widget.dart';
import 'package:flutter_tdd/features/auth/data/models/city_model/city_model.dart';

import '../../../../core/widgets/app_button.dart';

class CityListWidget extends StatefulWidget {
  final BaseBloc<List<CityModel>> citiesBloc;
  final CityModel? selectedCity;
  final List<CityModel> allCities;

  const CityListWidget({
    super.key,
    required this.citiesBloc,
    this.selectedCity,
    required this.allCities,
  });

  @override
  State<CityListWidget> createState() => _CityListWidgetState();
}

class _CityListWidgetState extends State<CityListWidget> {
  final ObsValue<CityModel?> selectedCityObs = ObsValue<CityModel?>.withInit(null);
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    selectedCityObs.setValue(widget.selectedCity);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return BaseBlocBuilder(
      bloc: widget.citiesBloc,
      onSuccessWidget: (data) {
        return Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: AppTextButton.minCustom(
                      maxHeight: 38,
                      borderRadius: 8,
                      text: Translate.s.cancel,
                      onPressed: () => Navigator.pop(context),
                      textStyle: AppTextStyle.s16_w500(color: context.colors.textColor),
                      bgColor: context.colors.white,
                      borderColor: context.colors.textColor,
                    ),
                  ),
                  Gaps.hGap15,
                  Expanded(
                    child: AppTextButton.minCustom(
                      maxHeight: 38,
                      borderRadius: 8,
                      text: Translate.s.apply,
                      onPressed: () => Navigator.of(context).pop(selectedCityObs.getValue()),
                      textStyle: AppTextStyle.s16_w500(color: context.colors.white),
                      bgColor: context.colors.black,
                      borderColor: context.colors.black,
                    ),
                  )
                ],
              ),
              Gaps.vGap20,
              // BankSearchBarWidget(
              //   controller: searchController,
              //   onChange: (value) => onSearchCityName(value, lang),
              //   fillColor: context.colors.inputFillColor,
              //   borderColor: context.colors.whiteOpacity,
              //   onPressSubmit: () {},
              // ),
              Padding(
                padding: Dimens.paddingH10V15PX,
                child: FadeAnimationWidget(
                  child: Text(
                    Translate.s.all_cities,
                    style: AppTextStyle.s13_w700(color: context.colors.silverColor),
                  ),
                ),
              ),
              Expanded(
                child: ObsValueConsumer(
                  observable: selectedCityObs,
                  builder: (context, value) {
                    return ListView(
                      children: List.generate(
                        data.length,
                        (index) {
                          var model = data[index];
                          bool isSelected = model.id == value?.id;
                          return InkWell(
                            onTap: () => onSelect(model),
                            child: Column(
                              children: [
                                FadeAnimationWidget(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? context.colors.black
                                          : context.colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: Dimens.paddingAll10PX,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            model.getCityName,
                                            style: AppTextStyle.s16_w500(
                                              color: isSelected == true
                                                  ? context.colors.white
                                                  : context.colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Gaps.vGap5,
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void onSelect(CityModel cityModel) {
    selectedCityObs.setValue(cityModel);
  }

  void onSearchCityName(String value, String currentLang) {
    if (value.isEmpty) {
      widget.citiesBloc.successState(widget.allCities);
    } else {
      var cities = widget.citiesBloc.data?.where((element) {
        return element.cityName?.toLowerCase().contains(value.toLowerCase()) == true || element.cityNameAr?.toLowerCase().contains(value.toLowerCase()) == true;
      }).toList();
      widget.citiesBloc.successState(cities);
    }
  }
}
