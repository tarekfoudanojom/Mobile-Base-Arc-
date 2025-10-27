part of 'sign_up_view_imports.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  SignUpViewController controller = SignUpViewController();

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height - 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GenericTextField(
                controller: controller.emailController,
                onChange: (value) => controller.enableButton(),
                textAlign: lang == "en" ? TextAlign.left : TextAlign.right,
                hintTextStyle:
                    AppTextStyle.s20_w500(color: context.colors.hintGaryColor),
                inputStyle: AppTextStyle.s20_w500(color: context.colors.black),
                textDirection: TextDirection.ltr,
                fieldTypes: FieldTypes.normal,
                fillColor: context.colors.white,
                action: TextInputAction.next,
                hint: Translate.s.email,
                type: TextInputType.emailAddress,
                margin: const EdgeInsets.only(right: 16, left: 16, top: 24),
                contentPadding: Dimens.paddingH16V10PX,
                validate: (value) => value?.noValidate(),
                enableBorderColor: Colors.transparent,
                focusBorderColor: Colors.transparent,
              ),
              Directionality(
                textDirection:
                    lang == ApplicationConstants.langAR ? TextDirection.rtl : TextDirection.ltr,
                child: GenericTextField(
                  controller: controller.phoneController,
                  onChange: (value) => controller.enableButton(),
                  fieldTypes: FieldTypes.normal,
                  fillColor: context.colors.white,
                  action: TextInputAction.next,
                  textAlign: lang == ApplicationConstants.langEN ? TextAlign.left : TextAlign.right,
                  hint: "512345679",
                  hintTextStyle:
                      AppTextStyle.s20_w500(color: context.colors.hintGaryColor)
                          .copyWith(
                    height: 1.2,
                  ),
                  inputStyle:
                      AppTextStyle.s20_w500(color: context.colors.black),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  textDirection: TextDirection.ltr,
                  margin: const EdgeInsets.only(right: 16, left: 16, top: 20),
                  type: TextInputType.phone,
                  validate: (val) => val?.noValidate(),
                  prefixIcon: _prefixIcon(context),
                  enableBorderColor: Colors.transparent,
                  focusBorderColor: Colors.transparent,
                  inputFormatters: [PhoneNumberInputFormatter()],
                ),
              ),
              PasswordFieldWidget(
                controller: controller.passWordFiledController,
                validate: (value) => value?.noValidate(),
                onChange: (value) => controller.enableButton(),
                passwordVisibleObs: controller.passWordVisibleObs,
              ),
              ObsValueConsumer(
                observable: controller.loadingObs,
                builder: (context, value) => LoadingButton(
                  title: Translate.s.create_account,
                  onTap: () => controller.onSignUp(context),
                  color: context.colors.appColorBlue,
                  textColor: context.colors.white,
                  btnKey: controller.btnKey,
                  borderRadius: 10,
                  height: 44,
                  margin: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                  titleTextStyle:
                      AppTextStyle.s18_w600(color: context.colors.white),
                  child: value ? const CupertinoActivityIndicator() : null,
                ),
              ),
              // SizedBox(height: 300.h),
              ///make this in the bottom of the page
              ///all of this is inside another column and a  list view
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SocialLoginButtons(
              isSignUp: true,
              googleSignup: () => controller.signUpWithGoogle(context),
              appleSignup: () => controller.signUpWithApple(context),
              // appleSignup: () => AutoRouter.of(context).push(CompleteSignUpPageRoute()),
            ),
          ),
        ),
      ],
    );
  }

  Widget _prefixIcon(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.showCountryBottomSheet(context);
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 20, 0, 18),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ObsValueConsumer(
              observable: controller.countryCodeObs,
              builder: (context, value) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value.flag,
                      style: AppTextStyle.s24_w500(
                          color: context.colors.textColor),
                    ),
                    Gaps.hGap5,
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 17,
                      color: context.colors.black,
                    ),
                    Gaps.hGap5,
                    Container(
                        width: .5,
                        height: 18,
                        color: context.colors.hintGaryColor),
                    Gaps.hGap10,
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        value.dialCode,
                        style:
                            AppTextStyle.s20_w500(color: context.colors.grey),
                      ),
                    ),
                    Gaps.hGap5,
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
