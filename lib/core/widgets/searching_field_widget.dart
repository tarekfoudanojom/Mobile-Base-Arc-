

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/res.dart';

class SearchingFieldWidget extends StatelessWidget {
  final TextEditingController searchController;
  final dynamic Function(String) onChange;
  final BorderRadius? borderRadius;
  const SearchingFieldWidget({super.key, required this.searchController, required this.onChange, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    final ObsValue<bool> isSearchingObs = ObsValue<bool>.withInit(false);
    return ObsValueConsumer(
      observable: isSearchingObs,
      builder: (context, value) {
        return GenericTextField(
          controller: searchController,
          fieldTypes: FieldTypes.normal,
          radius: borderRadius ?? BorderRadius.circular(92),
          onChange: (value){
            if(searchController.text.trim().isNotEmpty){
              isSearchingObs.setValue(true);
              isSearchingObs.refresh();
            }else{
              isSearchingObs.setValue(false);
              isSearchingObs.refresh();
            }
            onChange(value);
          },
          type: TextInputType.text,
          enableBorderColor: value?context.colors.textColor:Colors.transparent,
          // focusBorderColor:value?context.colors.textColor:Colors.transparent ,
          hint: Translate.s.search,
          fillColor: value
              ? context.colors.white
              : context.colors.background1,
          action: TextInputAction.done,
          validate: (value) => value?.noValidate(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(Res.searchIcon),
          ),
        );
      },
    );
  }
}
