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
import 'package:flutter_tdd/features/auth/data/models/country_model/country_model.dart';

import '../../../../core/widgets/app_button.dart';


class CountryListWidget extends StatefulWidget {
  final BaseBloc<List<CountryModel>> countriesBloc;
  final CountryModel? selectedCountry;
  final List<CountryModel> allCountries;
  final bool showPhoneCode;

  const CountryListWidget({
    super.key,
    required this.countriesBloc,
    this.selectedCountry,
    required this.allCountries,
    this.showPhoneCode = true,
  });

  static const List<String> defaultValues = ["Saudi Arabia", "Egypt"];

  @override
  State<CountryListWidget> createState() => _CountryListWidgetState();
}

class _CountryListWidgetState extends State<CountryListWidget> {

  final ObsValue<CountryModel?> selectedCountryObs = ObsValue<CountryModel?>.withInit(null);
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    selectedCountryObs.setValue(widget.selectedCountry);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return BaseBlocBuilder(
      bloc: widget.countriesBloc,
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
                      onPressed: () => Navigator.of(context).pop(selectedCountryObs.getValue()),
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
              //   onChange: (value) => onSearchCountryName(value, lang),
              //   fillColor: context.colors.inputFillColor,
              //   borderColor: context.colors.whiteOpacity,
              //   onPressSubmit: () {
              //     FocusScope.of(context).requestFocus(FocusNode());
              //   },
              // ),
              Padding(
                padding: Dimens.paddingH10V15PX,
                child: FadeAnimationWidget(
                  child: Text(
                    Translate.s.all_countries,
                    style: AppTextStyle.s13_w700(color: context.colors.silverColor),
                  ),
                ),
              ),
              Expanded(
                child: ObsValueConsumer(
                  observable: selectedCountryObs,
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
                                          child: Row(
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  model.getCountryName,
                                                  style: AppTextStyle.s16_w500(
                                                    color: isSelected == true
                                                        ? context.colors.white
                                                        : context.colors.black,
                                                  ),
                                                ),
                                              ),
                                              Gaps.hGap5,
                                              if (widget.showPhoneCode)
                                                Visibility(
                                                  visible: model.phoneCode != "" &&
                                                      model.phoneCode != null,
                                                  child: Text(
                                                    "(+${model.phoneCode ?? ""})",
                                                    style: AppTextStyle.s16_w400(
                                                        color: context.colors.textColor),
                                                  ),
                                                ),
                                            ],
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


  void onSelect(CountryModel countryModel) {
    selectedCountryObs.setValue(countryModel);
  }

  void onSearchCountryName(String value, String currentLang) {
    if (value.isEmpty) {
      widget.countriesBloc.successState(widget.allCountries);
    } else {
      var countries = widget.countriesBloc.data?.where((element) {
        return element.countryName!.toLowerCase().contains(value.toLowerCase()) || element.countryNameAr!.toLowerCase().contains(value.toLowerCase());
      }).toList();
      widget.countriesBloc.successState(countries);
    }
  }
}
