part of 'complete_signup_imports.dart';

@RoutePage(name: "CompleteSignUpPageRoute")
class CompleteSignUp extends StatefulWidget {
  final bool isBackLogin;
  final bool popOnBack;

  const CompleteSignUp({
    super.key,
    this.isBackLogin = false,
    this.popOnBack = false,
  });

  @override
  State<CompleteSignUp> createState() => _CompleteSignUpState();
}

class _CompleteSignUpState extends State<CompleteSignUp> {
  late CompleteSignUpController controller;

  @override
  void initState() {
    controller = CompleteSignUpController();
    controller.initData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int? isVerified = context.watch<ProfileCubit>().state.model?.isVerified;
    return WillPopScope(
      onWillPop: () async => controller.onPressBack(context, popOnBack: widget.popOnBack),
      child: Scaffold(
        backgroundColor: context.colors.background1,
        resizeToAvoidBottomInset: false,
        appBar: AuthAppBarWidget(
          showSkipButton: false,
          height: 36,
          leading: IconButton(
            onPressed: () => controller.onPressBack(
              context,
              popOnBack: widget.popOnBack,
            ),
            icon: Icon(Icons.arrow_back, size: 20, color: context.colors.black),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(
                  bottom: 80.h,
                ), // leave space for button
                children: [
                  SignupLogoWidget(controller: controller),
                  BrandInfoSectionWidget(controller: controller),
                  UserInfoSectionWidget(controller: controller),
                  CommercialInfoSectionWidget(controller: controller),
                  // VerificationSectionWidget(controller: controller),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 0),
          child: ObsValueConsumer(
            observable: controller.activeButtonObs,
            builder: (context, value) => LoadingButton(
              title: isVerified == 2 ? Translate.s.resend_submit_verification : Translate.s.submit_verification,
              onTap: () => controller.onPressNextOrSkip(context),
              color: context.colors.appColorBlue,
              textColor: context.colors.white,
              btnKey: controller.btnKey,
              borderRadius: 18,
              margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16, top: 10),
              height: 48,
              titleTextStyle: AppTextStyle.s16_w700(color: context.colors.white),
              child: value ? CupertinoActivityIndicator(color: context.colors.white) : null,
            ),
          ),
        ),
      ),
    );
  }
}
