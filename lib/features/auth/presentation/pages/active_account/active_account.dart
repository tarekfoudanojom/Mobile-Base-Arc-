part of 'active_account_imports.dart';

@RoutePage()
class ActiveAccount extends StatefulWidget {
  final ActiveAccountEntity activeAccountEntity;

  const ActiveAccount({super.key, required this.activeAccountEntity});

  @override
  State<StatefulWidget> createState() => _ActiveAccountState();
}

class _ActiveAccountState extends State<ActiveAccount> {
  late ActiveAccountController controller;

  @override
  void initState() {
    controller = ActiveAccountController(activeAccountEntity: widget.activeAccountEntity);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background1,
      resizeToAvoidBottomInset: false,
      appBar: AuthAppBarWidget(
        leading: InkWell(
          onTap: AutoRouter.of(context).pop,
          child: Icon(Icons.arrow_back, size: 20, color: context.colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              children: [
                Text(
                  Translate.s.please_enter_code,
                  style: AppTextStyle.s17_w400(color: context.colors.black),
                ),
                Gaps.vGap2,
                Text(
                  widget.activeAccountEntity.emailOrPhone.replaceAll(".", ""),
                  style: AppTextStyle.s16_w400(color: context.colors.black),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          ),
          ActiveCodeWidget(controller: controller),
          Gaps.vGap32,
          ActiveButtonWidget(controller: controller, type: widget.activeAccountEntity.type),
        ],
      ),
    );
  }
}
