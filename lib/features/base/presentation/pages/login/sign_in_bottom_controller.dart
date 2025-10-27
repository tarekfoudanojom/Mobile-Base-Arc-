import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/phone_helper.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_signup_by_phone.dart';
import 'package:flutter_tdd/features/auth/domain/entity/send_otp_phone_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/calling_codes_bottom_sheet_widget.dart';
import 'package:flutter_tdd/features/base/presentation/pages/login/widget/otp_login_widget.dart';
import 'package:uni_country_city_picker/src/core/models/country.dart';

class SignInBottomSheetController {

  final GlobalKey<CustomButtonState> phoneVerifyBtnKey = GlobalKey();
  final GlobalKey<CustomButtonState> verifyOTPKey = GlobalKey();
  final TextEditingController phoneController = TextEditingController();
  TextEditingController pinOTPFieldController = TextEditingController();
  final ObsValue<bool> submitButtonLoadingObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> loadingObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> loadingVerifyOtpObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> showReSendWarningObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> showReSendObs = ObsValue<bool>.withInit(false);
  final ObsValue<int> secondsObs = ObsValue<int>.withInit(50);
  Timer? timerForOpt;
  String phoneNumber = "";
  final ObsValue<bool> isErrorNumber = ObsValue<bool>.withInit(false);

  /// observables
  final ObsValue<Country> countryCodeObs = ObsValue<Country>.withInit(Country(
    name: "المملكة العربية السعودية",
    dialCode: "+966",
    nameEn: "Saudi Arabia",
    flag: "🇸🇦",
    isoCode: "SA",
    cities: [],
    phoneDigitsLength: 10,
    phoneDigitsLengthMax: 10,
  ));

  /// methods
  Future<void> showCountryBottomSheet(BuildContext context) async {
    var country = await showModalBottomSheet<Country>(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        builder: (ctx) => const CallingCodesBottomSheetWidget());

    countryCodeObs.setValue(country ?? countryCodeObs.getValue());
  }

  void enableButton() {
    isErrorNumber.setValue(false);
  }

  SendOtpPhoneParams _otpPhoneParams() {
    return SendOtpPhoneParams(
      phone:
          "${countryCodeObs.getValue().dialCode}.${PhoneHelper.handlePhone(phoneController.text.reFormatToNormal)}",
    );
  }

  Future<void> sendOtpPhone(BuildContext context) async {
    var params = _otpPhoneParams();
    isErrorNumber.setValue(false);
    if (!phoneController.text.reFormatToNormal.validateOnCode(countryCodeObs.getValue().dialCode)) {
      isErrorNumber.setValue(true);
      return;
    }
    loadingObs.setValue(true);
    var result = await getIt.get<AuthRepository>().sendOtpPhone(params);
    loadingObs.setValue(false);
    result.whenOrNull(isSuccess: (data) async {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.otp_send,
        type: ToastType.success,
      );

      phoneNumber = params.phone ?? "";
      if (timerForOpt != null && timerForOpt!.isActive) {
        timerForOpt!.cancel();
        timerForOpt = null;
      }
      pinOTPFieldController = TextEditingController();
      runTimer();

      await _loginVerifyWidget(context);
    });
  }

  Future<void> _loginVerifyWidget(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.924),
      builder: (ctx) => OTPLoginVerifyWidget(controller: this),
    );
  }

  Future<void> showVerifyYourAccountWidget(BuildContext context) async {
    await sendOtpPhone(context);
  }

  Future<void> onClosePopup(BuildContext context) async {
    if (timerForOpt != null && timerForOpt!.isActive) {
      timerForOpt!.cancel();
      timerForOpt = null;
    }
    pinOTPFieldController = TextEditingController();

    Navigator.of(context).pop();
  }

  void onComplete(String value, BuildContext context) {
    onVerifyPhone(context);
  }

  void onVerifyPhone(BuildContext context) async {
    if ((pinOTPFieldController.text.trim().arabicToEnglishNumbers).length != 4) {
      AppSnackBar.showSimpleToast(
        msg: "${Translate.s.please_enter} otp",
        color: Colors.black,
      );
      return;
    }

    var params = await _verifyPhoneParams();
    loadingVerifyOtpObs.setValue(true);
    var result = await getIt<AuthRepository>().loginOrSignupByPhone(params);
    result.whenOrNull(
      isSuccess: (data) {
        if (data?.status == true && (data?.token ?? "").isNotEmpty) {
          context.read<ProfileCubit>().onUpdateProfileDataWithChanged(data?.token ?? "").then((_) async {
            Future.delayed(const Duration(milliseconds: 500)).then(
                  (value) async {
                loadingVerifyOtpObs.setValue(false);
                AutoRouter.of(context).popAndPush(HomePageRoute());
              },
            );
          });
        } else {
          var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
          AppSnackBar.showSimpleToast(
            msg: lang == "ar" ? data?.messageAr ?? data?.message ?? "" : data?.message ?? "",
            color: Colors.black,
          );
          loadingVerifyOtpObs.setValue(false);
        }
      },
      isError: (error) {
        loadingVerifyOtpObs.setValue(false);
      },
    );
  }

  void verifyPhone(BuildContext context) async {
    onVerifyPhone(context);
  }

  Future<LoginSignUpByPhoneParams> _verifyPhoneParams() async {
    String deviceToken = await getIt<Utilities>().deviceToken;
    return LoginSignUpByPhoneParams(
        deviceToken: deviceToken,
        deviceType: 1,
        phone:
            "${countryCodeObs.getValue().dialCode}.${PhoneHelper.handlePhone(phoneController.text)}",
        code: (pinOTPFieldController.text.trim().arabicToEnglishNumbers));
  }

  Future<void> onPressReSend() async {
    var params = _otpPhoneParams();
    var result = await getIt.get<AuthRepository>().sendOtpPhone(params);
    result.whenOrNull(isSuccess: (data) {
      AppSnackBar.showSimpleToast(msg: Translate.s.otp_send, type: ToastType.success);
    });
    runTimer();
  }

  Future<void> runTimer() async {
    secondsObs.setValue(60);
    showReSendObs.setValue(true);
    if (timerForOpt != null && timerForOpt!.isActive) {
      timerForOpt!.cancel();
      timerForOpt = null;
    }
    timerForOpt = Timer.periodic(const Duration(seconds: 1), (timer) async {
      var newValue = secondsObs.getValue() - 1;
      secondsObs.setValue(newValue);
      if (newValue <= 0) {
        timerForOpt?.cancel();
        showReSendObs.setValue(false);
        showReSendObs.refresh();
      }
    });
  }
}
