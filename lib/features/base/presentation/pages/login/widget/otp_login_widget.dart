import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/LoadingButton.dart';
import 'package:flutter_tdd/core/widgets/cupertino_app_bar_back_Button.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/pin_field_widget.dart';
import 'package:flutter_tdd/features/base/presentation/pages/login/sign_in_bottom_controller.dart';

class OTPLoginVerifyWidget extends StatefulWidget {
  final SignInBottomSheetController controller;

  const OTPLoginVerifyWidget({
    super.key,
    required this.controller,
  });

  @override
  State<OTPLoginVerifyWidget> createState() => _OTPLoginVerifyWidgetState();
}

class _OTPLoginVerifyWidgetState extends State<OTPLoginVerifyWidget> {
  @override
  void initState() {
    super.initState();
  }

  void _onChange() {
    var warningObs = widget.controller.showReSendWarningObs;
    if (warningObs.getValue() == true) {
      warningObs.setValue(false);
      warningObs.refresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;

    return SafeArea(
      bottom: false,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return AnimatedPadding(
            duration: const Duration(milliseconds: 10),
            padding: EdgeInsets.only(bottom: viewInsets.bottom),
            child: Container(
              decoration: BoxDecoration(
                color: context.colors.background1,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: constraints.maxHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.vGap8,
                    Center(
                      child: Container(
                        width: 45,
                        height: 6,
                        decoration: BoxDecoration(
                          color: context.colors.mistGray2,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    CupertinoAppBarBackButton(
                      handleBackBtnClick: () => widget.controller.onClosePopup(context),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Gaps.vGap16,
                                  Text(
                                    Translate.s.phone_verification,
                                    style: AppTextStyle.s24_w600(color: context.colors.textPrimary),
                                  ),
                                  Gaps.vGap12,
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: [
                                      Text(
                                        Translate.s.enter_verification_code_sent_to,
                                        style: AppTextStyle.s14_w400(
                                          color: context.colors.textTertiary,
                                        ),
                                      ),
                                      Gaps.hGap5,
                                      Text(
                                        widget.controller.phoneNumber.replaceAll(".", ""),
                                        style: AppTextStyle.s14_w600(
                                          color: context.colors.textTertiary,
                                        ),
                                      ),
                                      Gaps.hGap5,
                                      InkWell(
                                        onTap: () => widget.controller.onClosePopup(context),
                                        child: Text(
                                          Translate.s.edit,
                                          style: AppTextStyle.s14_w600(
                                            color: context.colors.appColorBlue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gaps.vGap24,
                                ],
                              ),
                            ),
                            PinFieldWidget(
                              controller: widget.controller.pinOTPFieldController,
                              onComplete: (value) => widget.controller.onComplete(value, context),
                              onChanged: (value) => _onChange(),
                            ),
                            Gaps.vGap16,
                            Center(
                              child: ObsValueConsumer(
                                observable: widget.controller.showReSendObs,
                                builder: (context, value) {
                                  return Visibility(
                                    visible: !value,
                                    replacement: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          Translate.s.resend_in,
                                          style: AppTextStyle.s14_w400(
                                            color: context.colors.textGrayOpacity,
                                          ),
                                        ),
                                        Gaps.hGap4,
                                        ObsValueConsumer(
                                          observable: widget.controller.secondsObs,
                                          builder: (context, value) {
                                            return Text(
                                              "00:$value",
                                              style: AppTextStyle.s14_w400(
                                                color: context.colors.textColor,
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                    child: InkWell(
                                      onTap: () => widget.controller.onPressReSend(),
                                      child: Text(
                                        Translate.s.re_send_code,
                                        style: AppTextStyle.s17_w450(
                                          color: context.colors.appColorBlue,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Gaps.vGap24,
                          ],
                        ),
                      ),
                    ),

                    // === Bottom Submit Button ===
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                      child: Column(
                        children: [
                          Gaps.vGap12,
                          ObsValueConsumer(
                            observable: widget.controller.loadingVerifyOtpObs,
                            builder: (context, value) => LoadingButton(
                              title: Translate.s.confirm,
                              onTap: () => widget.controller.verifyPhone(context),
                              color: context.colors.appColorBlue,
                              textColor: context.colors.white,
                              btnKey: widget.controller.verifyOTPKey,
                              borderRadius: 16,
                              margin: EdgeInsets.zero,
                              height: 56,
                              titleTextStyle: AppTextStyle.s16_w700(
                                color: context.colors.white,
                              ),
                              child: value ? CupertinoActivityIndicator(color: context.colors.white) : null,
                            ),
                          ),
                          Gaps.vGap12,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
