part of 'more_widgets_imports.dart';

class SwitchAccountsBottomSheetWidget extends StatelessWidget {
  final MorePageController controller;

  const SwitchAccountsBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        left: 16,
        right: 16,
      ),
      margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      decoration: BoxDecoration(
        color: context.colors.background1,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      child: SingleChildScrollView(
        child: BaseBlocBuilder(
          bloc: controller.myAccountsBloc,
          onSuccessWidget: (data) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 35,
                  height: 5,
                  decoration: BoxDecoration(
                    color: context.colors.textGaryColor.withValues(alpha:0.7),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Gaps.vGap20,
                ...List.generate(
                  data.length,
                  (index) {
                    return SwitchAccountItemWidget(
                      model: data[index],
                      controller: controller,
                      accountList: data.length,
                    );
                  },
                ),
                Gaps.vGap10,
                AppTextButton.maxCustom(
                  onPressed: () => controller.addAccount(context),
                  text: Translate.s.add_account,
                  margin: Dimens.paddingBottom20PX,
                  txtColor: context.colors.black,
                  bgColor: context.colors.white,
                  borderColor: context.colors.black,
                  borderRadius: 40,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
