part of 'login_imports.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    controller = LoginController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: AppBar(
        backgroundColor: context.colors.white,
        elevation: 0,
        title: _buildTopBar(),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap20,
            _buildHeader(),
            Gaps.vGap32,
            _buildPhoneInput(),
            const Spacer(),
            _buildTermsText(),
            Gaps.vGap35,
            _buildContinueButton(),
            Gaps.vGap16,
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Translate.s.login_or_create_account,
          style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Translate.s.sign_up_with_phone_number,
            style: AppTextStyle.s24_w600(color: context.colors.black),
          ),
          Gaps.vGap8,
          Text(
            Translate.s.sign_in_or_create_account_now,
            style: AppTextStyle.s14_w400(color: context.colors.grey).copyWith(height: 1.2),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneInput() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCountryCodeSelector(),
          Gaps.hGap16,
          Expanded(
            child: ObsValueConsumer(
              observable: controller.isErrorNumber,
              builder: (context, isError) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GenericTextField(
                    controller: controller.phoneController,
                    onChange: (value) => controller.enableButton(),
                    fieldTypes: FieldTypes.normal,
                    fillColor: context.colors.white,
                    action: TextInputAction.done,
                    hintColor: context.colors.grey,
                    textAlign: TextAlign.left,
                    hint: Translate.s.phone_number,
                    hintTextStyle: AppTextStyle.s16_w500(color: context.colors.grey).copyWith(height: 1),
                    inputStyle: AppTextStyle.s16_w500(color: context.colors.black),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    textDirection: TextDirection.ltr,
                    margin: EdgeInsets.zero,
                    type: TextInputType.phone,
                    validate: (val) => val!.noValidate(),
                    radius: const BorderRadius.all(Radius.circular(16)),
                    enableBorderColor: isError ? context.colors.red : context.colors.grey.withValues(alpha: 0.3),
                    inputFormatters: [PhoneNumberInputFormatter()],
                    suffixWidget: _buildClearButton(),
                  ),
                  Visibility(
                    visible: isError,
                    child: Column(
                      children: [
                        Gaps.vGap10,
                        Text(
                          Translate.s.please_enter_valid_phone_number,
                          textAlign: TextAlign.start,
                          style: AppTextStyle.s14_w400(color: context.colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCountryCodeSelector() {
    return GestureDetector(
      onTap: () {
        // TODO: Show country picker
      },
      child: Container(
        padding: const EdgeInsetsDirectional.fromSTEB(14, 16, 7, 16),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: context.colors.grey.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: ObsValueConsumer(
          observable: controller.countryCode,
          builder: (context, value) {
            return Row(
              children: [
                Text(
                  '🇸🇦',
                  style: AppTextStyle.s24_w500(color: context.colors.textPrimary),
                ),
                Gaps.hGap8,
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Text(
                    value,
                    style: AppTextStyle.s16_w400(color: context.colors.textPrimary),
                  ),
                ),
                Gaps.hGap4,
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 24,
                  color: context.colors.grey,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildClearButton() {
    return GestureDetector(
      onTap: () {
        controller.phoneController.clear();
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.all(4),
        child: Icon(
          Icons.cancel,
          size: 20,
          color: context.colors.grey,
        ),
      ),
    );
  }

  Widget _buildTermsText() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          alignment: Alignment.center,
          child: Text(
            Translate.s.by_clicking_continue_you_agree_to,
            style: AppTextStyle.s14_w400(color: context.colors.grey).copyWith(height: 1.2),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              // TODO: Open terms and conditions
            },
            hoverColor: Colors.transparent,
            child: Text(
              Translate.s.terms_and_conditions_and_privacy_policy,
              style: AppTextStyle.s14_w400(color: context.colors.primary).copyWith(height: 1.2),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContinueButton() {
    return ObsValueConsumer(
      observable: controller.loadingObs,
      builder: (context, isLoading) => LoadingButton(
        title: Translate.s.keep_going,
        onTap: () => controller.login(context),
        color: context.colors.primary,
        textColor: context.colors.white,
        btnKey: controller.btnKey,
        borderRadius: 16,
        margin: EdgeInsets.zero,
        height: 56,
        titleTextStyle: AppTextStyle.s16_w700(color: context.colors.white),
        child: isLoading ? CupertinoActivityIndicator(color: context.colors.white) : null,
      ),
    );
  }
}
