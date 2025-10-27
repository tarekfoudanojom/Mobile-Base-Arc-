part of 'login_view_imports.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginViewController controller = LoginViewController();

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height - 200,
          child: Column(
            children: [
              GenericTextField(
                controller: controller.emailPhoneController,
                onChange: (value) => controller.enableButton(),
                textAlign: lang == "en" ? TextAlign.left : TextAlign.right,
                textDirection: TextDirection.ltr,
                fieldTypes: FieldTypes.normal,
                fillColor: context.colors.white,
                action: TextInputAction.next,
                hint: Translate.s.email_phone,
                type: TextInputType.emailAddress,
                hintTextStyle:
                    AppTextStyle.s20_w500(color: context.colors.hintGaryColor),
                inputStyle: AppTextStyle.s20_w500(color: context.colors.black),
                margin: const EdgeInsets.only(right: 16, left: 16, top: 24),
                contentPadding: Dimens.paddingH16V10PX,
                validate: (value) => value?.noValidate(),
                enableBorderColor: Colors.transparent,
                focusBorderColor: Colors.transparent,
              ),
              PasswordFieldWidget(
                controller: controller.passWordFiledController,
                validate: (value) => value?.noValidate(),
                onChange: (value) => controller.enableButton(),
                passwordVisibleObs: controller.passWordVisibleObs,
              ),
              Column(
                children: [
                  ObsValueConsumer(
                    observable: controller.loadingObs,
                    builder: (context, value) => LoadingButton(
                      title: Translate.s.login,
                      onTap: () => controller.onPressSignIn(context),
                      color: context.colors.appColorBlue,
                      textColor: context.colors.white,
                      btnKey: controller.btnKey,
                      borderRadius: 10,
                      height: 44,
                      margin: const EdgeInsets.fromLTRB(20, 108, 20, 10),
                      titleTextStyle:
                          AppTextStyle.s18_w600(color: context.colors.white),
                      child: value
                          ? const cupertino.CupertinoActivityIndicator()
                          : null,
                    ),
                  ),
                  ForgetPasswordWidget(controller: controller),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SocialLoginButtons(
              googleLogin: () => controller.signInWithGoogle(context),
              appleLogin: () => controller.signInWithApple(context),
              isSignUp: false,
            ),
          ),
        ),
      ],
    );
  }
}
