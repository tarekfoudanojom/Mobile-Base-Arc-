part of 'complete_signup_widgets_imports.dart';

class InfoBottomSheet extends StatefulWidget {
  final SignupInfoEntity infoEntity;
  final CompleteSignUpController controller;
  final Function()? onSubmit;
  final Function()? onVerify;

  const InfoBottomSheet({
    super.key,
    required this.infoEntity,
    required this.controller,
    this.onSubmit,
    this.onVerify,
  });

  @override
  State<InfoBottomSheet> createState() => _InfoBottomSheetState();
}

class _InfoBottomSheetState extends State<InfoBottomSheet> {
  @override
  void initState() {
    widget.controller.pinOTPFieldController = TextEditingController();

    if (widget.infoEntity.subTitle != Translate.s.add_username) {
      if (widget.infoEntity.title == Translate.s.mobil) {
        widget.controller.textEditingController.text = widget
                .infoEntity.subTitle
                ?.replaceAll("${widget.controller.countryCode}", "") ??
            '';
      } else {
        if (widget.infoEntity.subTitle == 'null') {
          widget.controller.textEditingController.clear();
        } else {
          if (widget.infoEntity.subTitle?.trim().isNotEmpty == true) {
            widget.controller.textEditingController.text =
                widget.infoEntity.subTitle ?? "";
          }
        }
        widget.controller.textEditingController2.text =
            widget.infoEntity.secondValue ?? "";
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;

    return SafeArea(
      bottom: false,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            // duration: const Duration(microseconds: 1),
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              padding: Dimens.paddingTop10PX,
              decoration: BoxDecoration(
                color: context.colors.background1,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: constraints.maxHeight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                    Gaps.vGap8,
                    Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            widget.controller.onPressCloseInfoPopup(context);
                          },
                          child: Text(
                            Translate.s.cancel,
                            style: AppTextStyle.s15_w600(
                              color: context.colors.appColorBlue,
                            ),
                          ),
                        ),
                        Gaps.hGap16,
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            Gaps.vGap16,
                            Center(
                              child: SizedBox(
                                height: 54,
                                width: 54,
                                child: SvgPicture.asset(
                                  widget.infoEntity.headerLogo ?? "",
                                ),
                              ),
                            ),
                            Gaps.vGap12,
                            Container(
                              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                              child: Text(
                                widget.infoEntity.headerTitle ?? "",
                                style: AppTextStyle.s24_w600(
                                  color: context.colors.textPrimary,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                widget.infoEntity.headerSubTitle ?? "",
                                textAlign: TextAlign.center,
                                style: AppTextStyle.s16_w400(
                                  color: context.colors.textTertiary,
                                ).copyWith(height: 1.2),
                              ),
                            ),
                            if (widget.infoEntity.type == SignupInfoType.phone)
                              Container(
                                margin: Dimens.paddingAll16PX,
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Row(
                                    children: [
                                      _prefixIcon(context),
                                      Expanded(
                                        child: GenericTextField(
                                          controller:
                                              widget.controller.phoneController,
                                          onChange: (value) => widget.controller
                                              .isSubmitButtonEnabled(
                                                  widget.infoEntity),
                                          autoFocus: true,
                                          fieldTypes: FieldTypes.normal,
                                          fillColor: context.colors.white,
                                          action: TextInputAction.next,
                                          textAlign: TextAlign.left,
                                          hint: Translate.s.phone_number,
                                          hintTextStyle: AppTextStyle.s16_w400(
                                            color: context.colors.hintGaryColor,
                                          ).copyWith(height: 1.2),
                                          inputStyle: AppTextStyle.s16_w400(
                                            color: context.colors.black,
                                          ),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 16,
                                          ),
                                          textDirection: TextDirection.ltr,
                                          margin:
                                              const EdgeInsets.only(left: 8),
                                          type: TextInputType.phone,
                                          validate: (val) => val?.noValidate(),
                                          radius: const BorderRadius.all(
                                              Radius.circular(16)),
                                          focusBorderColor: Colors.transparent,
                                          enableBorderColor:
                                              context.colors.mistyGray,
                                          inputFormatters: [
                                            PhoneNumberInputFormatter()
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if ([
                              SignupInfoType.campaignName,
                              SignupInfoType.brandName,
                              SignupInfoType.link,
                              SignupInfoType.name,
                              SignupInfoType.email,
                            ].contains(widget.infoEntity.type))
                              GenericTextField(
                                controller:
                                    widget.controller.textEditingController,
                                fieldTypes: FieldTypes.normal,
                                autoFocus: true,
                                fillColor: context.colors.white,
                                action: TextInputAction.next,
                                hint: widget.infoEntity.pleaseHolder ?? "",
                                type: TextInputType.text,
                                margin: Dimens.paddingH16V5PX,
                                // textAlign: (widget.infoEntity.type == SignupInfoType.email)
                                //     ? TextAlign.left
                                //     : (lang == "ar" ? TextAlign.right : TextAlign.left),
                                validate: (value) => value?.noValidate(),
                                contentPadding: Dimens.paddingAll16PX,
                                prefixIcon: null,
                                focusBorderColor: Colors.transparent,
                                enableBorderColor: context.colors.mistyGray,
                                hintTextStyle: AppTextStyle.s16_w400(
                                  color: context.colors.grey,
                                ),
                                inputStyle: AppTextStyle.s16_w400(
                                  color: context.colors.black,
                                ).copyWith(height: 1.5),
                                radius: BorderRadius.circular(16),
                                cursorColor: context.colors.appColorBlue,
                                onChange: (value) {
                                  widget.controller
                                      .isSubmitButtonEnabled(widget.infoEntity);
                                },
                              ),
                            if (widget.infoEntity.type == SignupInfoType.name)
                              GenericTextField(
                                controller:
                                    widget.controller.textEditingController2,
                                fieldTypes: FieldTypes.normal,
                                fillColor: context.colors.white,
                                action: TextInputAction.next,
                                hint: Translate.s.last_name,
                                type: TextInputType.text,
                                margin: Dimens.paddingH16V10PX,
                                validate: (value) => value?.noValidate(),
                                contentPadding: Dimens.paddingAll16PX,
                                prefixIcon: null,
                                focusBorderColor: Colors.transparent,
                                enableBorderColor: context.colors.mistyGray,
                                hintTextStyle: AppTextStyle.s16_w400(
                                  color: context.colors.grey,
                                ),
                                inputStyle: AppTextStyle.s16_w400(
                                  color: context.colors.black,
                                ).copyWith(height: 1.5),
                                radius: BorderRadius.circular(16),
                                cursorColor: context.colors.appColorBlue,
                                onChange: (value) {
                                  widget.controller
                                      .isSubmitButtonEnabled(widget.infoEntity);
                                },
                              ),
                            Visibility(
                              visible: widget.infoEntity.type ==
                                  SignupInfoType.crNumber,
                              child: CRNumberWidget(
                                controller: widget.controller,
                                infoEntity: widget.infoEntity,
                              ),
                            ),
                            Visibility(
                              visible:
                                  widget.infoEntity.type == SignupInfoType.vat,
                              child: VatNumberWidget(
                                controller: widget.controller,
                                infoEntity: widget.infoEntity,
                                onSubmit: widget.onSubmit,
                              ),
                            ),
                            Visibility(
                              visible: widget.infoEntity.type ==
                                  SignupInfoType.verifyPhoneNumber,
                              child: OTPMobileNumberWidget(
                                controller: widget.controller,
                                infoEntity: widget.infoEntity,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (widget.infoEntity.type !=
                        SignupInfoType.verifyPhoneNumber)
                      ObsValueConsumer(
                        observable: widget.controller.loadingObs,
                        builder: (context, value) => LoadingButton(
                          title: Translate.s.save,
                          onTap: () => widget.onSubmit!(),
                          color: context.colors.appColorBlue,
                          textColor: context.colors.white,
                          btnKey: widget.controller.crBtnKey,
                          borderRadius: 18,
                          height: 48,
                          margin: Dimens.paddingAll15PX,
                          titleTextStyle: AppTextStyle.s17_w600(
                            color: context.colors.white,
                          ),
                          child:
                              value ? const CupertinoActivityIndicator() : null,
                        ),
                      ),
                    if (widget.infoEntity.type ==
                        SignupInfoType.verifyPhoneNumber)
                      ObsValueConsumer(
                        observable: widget.controller.loadingObs,
                        builder: (context, value) => LoadingButton(
                          title: Translate.s.confirm_verification_code,
                          onTap: () => widget.onSubmit!(),
                          color: context.colors.appColorBlue,
                          textColor: context.colors.white,
                          btnKey: widget.controller.phoneVerifyBtnKey,
                          borderRadius: 18,
                          height: 48,
                          margin: Dimens.paddingAll15PX,
                          titleTextStyle: AppTextStyle.s17_w600(
                            color: context.colors.white,
                          ),
                          child:
                              value ? const CupertinoActivityIndicator() : null,
                        ),
                      ),
                    Gaps.vGap18,
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _prefixIcon(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.controller.showCountryBottomSheet(context);
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(14, 16, 10, 16),
        decoration: BoxDecoration(
          color: Colors.white, // Background color (optional)
          borderRadius: BorderRadius.circular(16), // Set 12 corner radius
          border: Border.all(
            color: context.colors.mistyGray, // Border color
            width: 1, // Border width (optional)
          ),
        ),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ObsValueConsumer(
              observable: widget.controller.countryCodeObs,
              builder: (context, value) {
                print(value.flag);
                return Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      value.flag,
                      style: AppTextStyle.s22_w500(
                        color: context.colors.textColor,
                      ),
                    ),
                    Gaps.hGap8,
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        value.dialCode,
                        style: AppTextStyle.s16_w400(
                          color: context.colors.textColor,
                        ),
                      ),
                    ),
                    Gaps.hGap4,
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 20,
                      color: context.colors.textColor,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
