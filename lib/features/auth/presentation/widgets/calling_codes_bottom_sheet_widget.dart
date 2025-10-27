import 'package:auto_route/auto_route.dart';
// import 'package:uni_country_city_picker/uni_country_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/app_loader_widget.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/auth/domain/requesters/calling_codes_requester.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:uni_country_city_picker/uni_country_city_picker.dart';

import '../../../../core/bloc/device_cubit/device_cubit.dart';
import '../../../../core/constants/dimens.dart';

class CallingCodesBottomSheetWidget extends StatefulWidget {
  const CallingCodesBottomSheetWidget({super.key});

  @override
  State<CallingCodesBottomSheetWidget> createState() =>
      _CallingCodesBottomSheetWidgetState();
}

class _CallingCodesBottomSheetWidgetState
    extends State<CallingCodesBottomSheetWidget> {
  final TextEditingController searchController = TextEditingController();
  final CallingCodesRequester callingCodesRequester = CallingCodesRequester();
  final ObsValue<Country?> selectedCountry = ObsValue<Country?>.withInit(null);

  @override
  void initState() {
    callingCodesRequester.request();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: selectedCountry,
      builder: (context, selectedValue) {
        var lang = context.read<DeviceCubit>().state.model.locale.languageCode;

        return Container(
          margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
          decoration: BoxDecoration(
            color: context.colors.whiteOpacity,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap20,
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => AutoRouter.of(context).pop(),
                      child: Container(
                        margin: Dimens.paddingV5PX,
                        padding: Dimens.paddingAll7PX,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: context.colors.textGaryColor
                                  .withValues(alpha: 0.7)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          Translate.s.cancel,
                          style: AppTextStyle.s18_w500(
                              color: context.colors.textColor),
                        ),
                      ),
                    ),
                  ),
                  Gaps.hGap20,
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print(selectedValue);
                        // AutoRouter.of(context).pop(selectedValue);
                        Navigator.of(context).maybePop(selectedValue);
                      },
                      child: Container(
                        margin: Dimens.paddingV5PX,
                        padding: Dimens.paddingAll7PX,
                        decoration: BoxDecoration(
                          color: context.colors.black,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: context.colors.black),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          Translate.s.apply,
                          style: AppTextStyle.s18_w500(
                              color: context.colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gaps.vGap20,
              GenericTextField(
                controller: searchController,
                fieldTypes: FieldTypes.normal,
                radius: BorderRadius.circular(5),
                onChange: (value) => _onChange(value),
                type: TextInputType.text,
                hint: Translate.s.search,
                fillColor: context.colors.white,
                action: TextInputAction.done,
                validate: (value) => value?.noValidate(),
                hintTextStyle:
                    AppTextStyle.s16_w400(color: context.colors.textGrayOpacity)
                        .copyWith(height: .5),
                contentPadding: const EdgeInsets.symmetric(vertical: 3),
                enableBorderColor: Colors.transparent,
                focusBorderColor: Colors.transparent,
                prefixIcon: Container(
                  padding: lang == "en"
                      ? const EdgeInsets.fromLTRB(8, 0, 0, 0)
                      : const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: Icon(
                    Icons.search,
                    color: context.colors.grey,
                    size: 20,
                  ),
                ),
                prefixIconConstraint: const BoxConstraints(
                  minWidth: 30, // match your Container width
                ),
              ),

              Gaps.vGap12,
              Container(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 15, right: 10, left: 10),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                alignment: AlignmentDirectional.center,
                child: Text(
                  Translate.s.all_countries,
                  style: AppTextStyle.s16_w600(color: context.colors.grey),
                ),
              ),
              // Gaps.vGap10,
              RequesterConsumer(
                requester: callingCodesRequester,
                successBuilder: (cxt, countries, _) {
                  return Flexible(
                    child: Container(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 27,
                        itemBuilder: (context, index) {
                          // if (_buildPopularCountries(index, selectedValue) != null) {
                          //   return _buildPopularCountries(index, selectedValue);
                          // }
                          String character = String.fromCharCode(index + 64);
                          var charCountries = countries
                              .where((e) => e.nameEn.startsWith(character))
                              .toList();
                          if (charCountries.isEmpty) {
                            return const SizedBox();
                          }
                          return _buildStickyHeader(
                              character, charCountries, selectedValue);
                        },
                        // separatorBuilder: (context, index) {
                        //   if (callingCodesRequester.hasSearchValue) {
                        //     return const SizedBox();
                        //   }
                        //   return Divider(height: 20, color: context.colors.grayWhite);
                        // },
                      ),
                    ),
                  );
                },
                failureBuilder: (context, error, _) {
                  return Center(
                    child: Text(
                      error.toString(),
                      style: AppTextStyle.s16_w400(
                          color: context.colors.textColor),
                    ),
                  );
                },
                loadingBuilder: (context) {
                  return const AppLoaderWidget.largeLogo();
                },
              ),
              // if (selectedValue != null)
              //   DoneButtonWidget(
              //     onTap: () => AutoRouter.of(context).pop(selectedValue),
              //   )
            ],
          ),
        );
      },
    );
  }

  // Widget? _buildPopularCountries(int index, Country? selectedValue) {
  //   if (index == 0 && callingCodesRequester.hasSearchValue) {
  //     return const SizedBox.shrink();
  //   } else if (index == 0) {
  //     var popularCountries = callingCodesRequester.getPopularCountries();
  //     return _buildStickyHeader(Translate.s.popular_countries, popularCountries, selectedValue);
  //   }
  //   return null;
  // }

  StickyHeader _buildStickyHeader(
      String title, List<Country> countries, Country? selectedValue) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return StickyHeader(
      header: Container(
          // height: 40,
          // padding: Dimens.paddingH10PX,
          // color: context.colors.white,
          // alignment: AlignmentDirectional.centerStart,
          // child: Text(
          //   title,
          //   style: AppTextStyle.s14_w400(
          //     color: context.colors.textGaryColor.withValues(alpha:0.4),
          //   ),
          // ),
          ),
      content: Column(
        children: List.generate(
          countries.length,
          (index) {
            var country = countries[index];
            return InkWell(
              onTap: () {
                selectedCountry.setValue(country);
                print(
                    "=====>>> selected country: ${country.name}, flag: ${country.flag}");
                // Future.delayed(const Duration(milliseconds: 100)).then((va) {
                //   AutoRouter.of(context).pop(country);
                // });
              },
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: selectedValue == country
                      ? context.colors.black
                      : context.colors.white,
                  // borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(6, 0, 12, 0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedValue == country
                              ? context.colors.textColor
                              : context.colors.white),
                      child: Text(country.flag,
                          style: AppTextStyle.s22_w400(
                              color: context.colors.black)),
                    ),
                    Expanded(
                      child: Text(
                        lang == 'ar' ? country.name : country.nameEn,
                        style: AppTextStyle.s16_w400(
                            color: selectedValue == country
                                ? context.colors.white
                                : context.colors.black),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(6, 0, 12, 0),
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Text(country.dialCode,
                            style: AppTextStyle.s16_w400(
                                color: selectedValue == country
                                    ? context.colors.white
                                    : context.colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onChange(String value) {
    callingCodesRequester.setSearchValueAndRequest(value);
  }
}
