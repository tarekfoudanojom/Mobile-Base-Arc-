import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';

import '../../../../core/bloc/value_state_manager/value_state_manager_import.dart';

class SendCustomOfferModel {
  TextEditingController txtPriceController;
  ObsValue<bool> isSelected;
  String price;
  FocusNode focusNode = FocusNode();
  int platformId;
  int? platformOptionId;
  SendCustomOfferModel(this.txtPriceController, this.isSelected,
      this.price, this.platformId, this.platformOptionId);

  void setPrice(String str) {
    price = str;
  }

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      "platform_id": platformId,
      "price": double.tryParse(
              txtPriceController.text.trim().removeThousandSeparators) ??
          0,
      "quantity": 1, // fixed value
    };

    if (platformOptionId != null) {
      data["platform_option_id"] = platformOptionId;
    }

    return data;
  }

  /// Convert to JSON
  Map<String, dynamic> toJsonWithNewPrice(double price) {
    final data = <String, dynamic>{
      "platform_id": platformId,
      "price": price,
      "quantity": 1, // fixed value
    };

    if (platformOptionId != null) {
      data["platform_option_id"] = platformOptionId;
    }

    return data;
  }
}

class CustomOfferModel {
  TextEditingController txtServerNameController;
  TextEditingController txtPriceController;
  ObsValue<bool> isSelected;
  FocusNode focusNode = FocusNode();

  CustomOfferModel(
      this.txtServerNameController, this.txtPriceController, this.isSelected);
  void onChange(String str) {
    isSelected.setValue(txtServerNameController.text.trim().isNotEmpty ||
        (txtServerNameController.text.trim().isEmpty &&
            txtPriceController.text.trim().isNotEmpty));
    isSelected.refresh();
  }

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      "description": txtServerNameController.text.trim(),
      "price": double.tryParse(
              txtPriceController.text.trim().removeThousandSeparators) ??
          0,
      "quantity": 1, // fixed value
    };
  }

  /// Convert to JSON
  Map<String, dynamic> toJsonWithNewPrice(double price) {
    return {
      "description": txtServerNameController.text.trim(),
      "price": price,
      "quantity": 1, // fixed value
    };
  }
}
