import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/aes_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';

class UpdateProfileNameParams {
  final String keyName;
  final String? keyName2;
  final dynamic value;
  final String? secondValue;
  final String? email;
  final String? mobilePrefix;
  final String? contactNo;

  UpdateProfileNameParams({
    required this.keyName,
    this.keyName2,
    required this.value,
    this.secondValue,
    this.email,
    this.mobilePrefix,
    this.contactNo,
  });

  Map<String, dynamic> toJson() {
    final context = getIt<GlobalContext>().context();
    final userData = context.read<UserCubit>().state.model;
    final Map<String, dynamic> data = <String, dynamic>{};

    data[keyName] = value;
    data['$keyName2'] = secondValue ?? userData?.lastName ?? "";
    if (keyName != "first_name") data["first_name"] = userData?.firstName ?? "";
    if (keyName != "brand_name") data["brand_name"] = userData?.brandName ?? "";
    if (keyName != "company_name") data["company_name"] = userData?.companyName ?? "";
    if (keyName != "username") data["username"] = userData?.username ?? "";
    if (keyName != "aboutus_id")
      data["aboutus_id"] = userData?.aboutUsList?.firstWhereOrNull((e) => e.isSelected == true)?.id ?? "";
    if (userData?.isVerified != null) {
      if (keyName != "is_verified") data["is_verified"] = (userData?.isVerified ?? "0").toString();
    }
    if (keyName2 == null) data['last_name'] = userData?.lastName ?? "";
    // if (email != null && keyName != 'email') {
    data['email'] = email ?? userData?.email ?? "";
    // }
    if (mobilePrefix != null && mobilePrefix!.isNotEmpty && userData?.contact != null) {
      data['mobile_prefix'] = mobilePrefix ?? userData?.phone?.split(".")[0] ?? "";
    }
    if ((contactNo != null && contactNo!.isNotEmpty && userData?.contact != null) || (userData?.phone != null&& userData?.phone !="null.null")) {
      data['contactNo'] = (contactNo != "null") ? contactNo : (userData?.phone ?? "");
    }
    return data;
  }

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
