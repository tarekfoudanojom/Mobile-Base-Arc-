part of 'change_password_imports.dart';

@RoutePage(name: 'ChangePasswordPageRoute')
class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final ChangePasswordController controller = ChangePasswordController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background1,
      resizeToAvoidBottomInset: false,
      appBar: DefaultAppBar(
        title: Translate.s.label_password,
        txtStyle: AppTextStyle.s20_w600(color: context.colors.textColor),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: Dimens.paddingH16PX,
              children: [
                Gaps.vGap24,
                Text(
                  "Your new password must be different",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s13_w400(color: context.colors.textGrayOpacity),
                ),
                Gaps.vGap4,
                Text(
                  "from previously used passwords.",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s13_w400(color: context.colors.textGrayOpacity),
                ),
                Gaps.vGap32,
                CurrentPasswordWidget(controller: controller),
                NewPasswordWidget(controller: controller),
                ConfirmPasswordWidget(controller: controller),
              ],
            ),
          ),
          NavButtonWidget(
            title: Translate.s.confirm,
            activeButtonObs: controller.activeButtonObs,
            btnKey: controller.btnKey,
            onTap: () => AutoRouter.of(context).push(const ChangePasswordConfirmPageRoute()),
          )
        ],
      ),
    );
  }
}
