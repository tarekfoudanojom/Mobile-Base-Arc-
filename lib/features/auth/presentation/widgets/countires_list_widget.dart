import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/auth/domain/models/countries_model.dart';

class CountriesListWidget extends StatelessWidget {
  final BaseBloc<List<CountriesModel>> countriesBloc;
  final ObsValue<String>? selectedItemObs;
  final bool? showCountryCode;

  const CountriesListWidget(
      {super.key, required this.countriesBloc, this.showCountryCode = false, this.selectedItemObs});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc: countriesBloc,
      onSuccessWidget: (data) {
        return Flexible(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var model = data[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.vGap9,
                  Text(
                    model.sectionTitle,
                    style: AppTextStyle.s14_w400(
                      color: context.colors.textGaryColor.withValues(alpha:0.4),
                    ),
                  ),
                  Gaps.vGap18,
                  ...List.generate(model.countriesList.length, (innerIndex) {
                    var item = model.countriesList[innerIndex];
                    return Column(
                      children: [
                        InkWell(
                          onTap: () => _onTap(innerIndex, index),
                          child: Row(
                            children: [
                              Text(
                                item.name,
                                style: AppTextStyle.s16_w400(color: context.colors.textColor),
                              ),
                              Gaps.hGap5,
                              if (showCountryCode!)
                                Text(
                                  "(${item.countryCode})",
                                  style: AppTextStyle.s16_w400(color: context.colors.textColor),
                                ),
                              const Spacer(),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: item.isSelected ? context.colors.textColor : context.colors.white),
                                child: Icon(
                                  Icons.check,
                                  color: context.colors.white,
                                  size: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                        Visibility(
                            visible: innerIndex != model.countriesList.length - 1,
                            replacement: Gaps.vGap10,
                            child: Gaps.vGap19),
                        if (innerIndex == model.countriesList.length - 1)
                          Divider(
                            thickness: 1,
                            color: context.colors.slightBlueGray,
                          )
                      ],
                    );
                  }),
                ],
              );
            },
          ),
        );
      },
    );
  }

  void _onTap(int innerListIndex, int index) {
    var countriesModel = countriesBloc.data![index];
    var item = countriesModel.countriesList[innerListIndex];
    for (var e in countriesBloc.data!) {
      for (var element in e.countriesList) {
        // var countryModel = element.copyWith(isSelected: false);
        // print("====countryModelNew====${countryModel.toJson()}");
        element.isSelected = false;
      }
    }

    item.isSelected = !item.isSelected;
    selectedItemObs?.setValue(showCountryCode! ? countriesModel.selectedCode : countriesModel.selectedCity);
    countriesBloc.successState(countriesBloc.data);
  }
}
