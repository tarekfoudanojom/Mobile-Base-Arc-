import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/env/environment_config_reader.dart';
import 'package:moneyhash_payment/data/apple_pay/apple_pay_receipt_params.dart';
import 'package:moneyhash_payment/data/apple_pay_configuration.dart';
import 'package:moneyhash_payment/data/collectible_billing_data.dart';
import 'package:moneyhash_payment/data/intent_methods.dart';
import 'package:moneyhash_payment/data/intent_state.dart';
import 'package:moneyhash_payment/data/intent_type.dart';
import 'package:moneyhash_payment/data/methods/get_methods_params.dart';
import 'package:moneyhash_payment/data/native_pay_data.dart';
import 'package:moneyhash_payment/log/log_level.dart';
import 'package:moneyhash_payment/moneyhash_payment.dart';
import 'package:moneyhash_payment/vault/card_collector.dart';
import 'package:moneyhash_payment/vault/card_form_builder.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MoneyHashHelper {
  /// variables
  final MoneyHashSDK moneyHashSDK = MoneyHashSDK(
    null,
    ApplePayConfiguration(
      merchantDisplayName: "Nojom",
      collectibleBillingData: [
        CollectibleBillingData.email,
      ],
    ),
  );
  late GetMethodsParams methodsParams;
  final intentType = IntentType.payment; // or IntentType.payout
  CardForm? cardForm;

  Future<void> init(String intentId) async {
    initDebugDetails();
    moneyHashSDK.setPublicKey(FlutterEnvironmentConfigReader.instance.getPaymentKey());
    // Create GetMethodsParams using the withIntent constructor
    methodsParams = GetMethodsParams.withIntent(intentId, intentType);
    // getIntentDetails(intentId);
    // getMethods();
  }

  void getIntentDetails(String intentId) async {
    try {
      final intentDetails = await moneyHashSDK.getIntentDetails(intentId, IntentType.payment);
      log("Intent Details: $intentDetails");
    } catch (e) {
      log("Error retrieving intent details: $e");
    }
  }

  void initDebugDetails() {
    moneyHashSDK.setLogLevel(LogLevel.debug);
    cardForm = CardFormBuilder().setCardHolderNameField((state) {
      log("CardHolderName: ${state?.isValid}");
      log("CardHolderName: ${state?.errorMessage}");
    }).setCardNumberField((state) {
      log("CardNumber: ${state?.isValid}");
      log("CardNumber: ${state?.errorMessage}");
    }).setCVVField((state) {
      log("CVV: ${state?.isValid}");
      log("CVV: ${state?.errorMessage}");
    }).setExpiryMonthField((state) {
      log("ExpireMonth: ${state?.isValid}");
      log("ExpireMonth: ${state?.errorMessage}");
    }).setExpiryYearField((state) {
      log("ExpireYear: ${state?.isValid}");
      log("ExpireYear: ${state?.errorMessage}");
    }).setCardBrandChangeListener((cardBrand) {
      log("CardBrand: ${cardBrand?.brand}");
      log("CardBrand: ${cardBrand?.brandIconUrl}");
      log("CardBrand: ${cardBrand?.first6Digits}");
    }).build();
  }

  void getMethods() async {
    try {
      // Retrieve available methods
      final methods = await moneyHashSDK.getMethods(methodsParams);

      methods.paymentMethods?.forEach((method) {
        log("Payment ExpressMethods: ${method.id}");
      });

      methods.expressMethods?.forEach((method) {
        log("Payment ExpressMethods: ${method.id}");
      });

      log("Available Payment Methods: ${methods.paymentMethods?[0].id}");
      log("Available Express Methods: ${methods.expressMethods}");
      log("Saved Cards: ${methods.savedCards}");
      log("Customer Balances: ${methods.customerBalances}");
    } catch (e) {
      log("Error retrieving methods: $e");
    }
  }

  Future<bool> proceedWithPayment(String intentId) async {
    var collectResult = await cardForm?.collect();
    log("CollectResult: ${collectResult?.cardHolderName}");
    log("CollectResult: ${collectResult?.expiryMonth}");
    log("CollectResult: ${collectResult?.lastFourDigits}");

    // Set the intent method to Card before proceeding to payment
    await moneyHashSDK.proceedWithMethod(
      intentId,
      IntentType.payment,
      "CARD",
      MethodType.paymentMethod,
      null,
      false,
    );

    var payResult = await cardForm?.pay(
      intentId,
      collectResult!,
      false,
      null,
      null,
    );

    if (payResult?.intentState is UrlToRender) {
      var urlToRender = (payResult?.intentState as UrlToRender);
      log("UrlToRender: ${urlToRender.url}");
      log("UrlToRender: ${urlToRender.renderStrategy}");
      var result = await openRedirectUrl(urlToRender.url!);
      return result ?? false;
    }

    var result = await moneyHashSDK.getIntentDetails(intentId, IntentType.payment);

    log("PayResult: ${result.transaction?.amount}");
    log("PayResult: ${result.transaction?.amountCurrency}");
    log("PayResult Status: ${result.transaction?.status}");
    return result.transaction?.status != null && result.transaction?.status != "FAILED";
  }

  Future<bool> proceedWithApplePayment(
      {required String intentId, required String totalAmount}) async {
    // Set the intent method to Card before proceeding to payment

    var applePayData = ApplePayData(
      amount: double.parse(totalAmount),
      merchantId: FlutterEnvironmentConfigReader.instance.getMerchantKey(),
      currencyCode: "SAR",
      countryCode: "SA",
    );
    var appleReceipt = await moneyHashSDK.generateApplePayReceipt(
      ApplePayReceiptParams.withApplePayData(
        double.parse(totalAmount),
        applePayData,
      ),
    );

    log("ApplePayReceipt: ${appleReceipt?.receiptBillingData}");


    // var details = await moneyHashSDK.proceedWithMethod(
    //   intentId,
    //   IntentType.payment,
    //   "APPLE_PAY",
    //   MethodType.paymentMethod,
    //   null,
    //   false,
    // );
    // var intentDetails = details.details!;
    //
    // if (intentDetails.intentState is NativePay) {
    //   var data = (intentDetails.intentState as NativePay).nativePayData as ApplePayData;
    //   log("ApplePayData: ${data.toJson()}");
    //   await _proceedWithApplePay(
    //     intentId,
    //     data.amount!,
    //     data.merchantId!,
    //     data.currencyCode!,
    //     data.countryCode!,
    //   );
    //   var isSuccess = await _checkPayemtSuccessStatus(intentId, IntentType.payment);
    //   return isSuccess;
    // }

    var isSuccess = await _checkPayemtSuccessStatus(intentId, IntentType.payment);
    return isSuccess;
  }

  Future<bool?> openRedirectUrl(String url) async {
    bool isActionTaken = false;
    var context = getIt<GlobalContext>().context();
    var webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onUrlChange: (change) {
            if (change.url?.toLowerCase().contains("status=") == true && !isActionTaken) {
              isActionTaken = true;
              if (change.url?.toLowerCase().contains("status=failed") == true) {
                Navigator.of(context).pop(false);
                return;
              }
              Navigator.of(context).pop(true);
            }
          },
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(Uri.parse(url));
    return await showModalBottomSheet<bool>(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        builder: (_) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.only(top: 20),
            child: WebViewWidget(
              controller: webViewController,
            ),
          );
        });
  }

  static const MethodChannel _channel = MethodChannel('moneyhash_payment');

  Future<void> _proceedWithApplePay(
    String intentId,
    double depositAmount,
    String merchantIdentifier,
    String currencyCode,
    String countryCode,
  ) async {
    if (!Platform.isIOS) {
      throw UnsupportedError("This feature is only supported on iOS devices.");
    }
    try {
      await _channel.invokeMethod('proceedWithApplePay', {
        'intentId': intentId,
        'depositAmount': depositAmount,
        'merchantIdentifier': merchantIdentifier,
        'currencyCode': currencyCode,
        'countryCode': countryCode,
      });
    } on PlatformException catch (e) {
      log("Error invoking method: ${e.message}");
    }
  }

  Future<bool> _checkPayemtSuccessStatus(String intentId, IntentType intentType) async {
    try {
      getIt<LoadingHelper>().showLoadingDialog();
      var result = await _channel.invokeMethod('getIntentDetails', {
        'intentId': intentId,
        'intentType': intentType.type,
      });
      getIt<LoadingHelper>().dismissDialog();
      if (result == null || result.isEmpty) {
        log("Error retrieving intent status: No result");
        return false;
      } else {
        log("result >>=============> $result");
        return !result.toString().contains('"status" : "FAILED"') &&
            !result.toString().contains('"status" : "UNPROCESSED"');
      }
    } catch (e) {
      getIt<LoadingHelper>().dismissDialog();
      log("Error retrieving intent status: $e");
      return false;
    }
  }
}
