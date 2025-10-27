part of 'more_widgets_imports.dart';

class AccountSettingWidget extends StatelessWidget {
  final MorePageController controller;

  const AccountSettingWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    bool auth = context.read<DeviceCubit>().state.model.auth;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          if (auth)
            Column(
              children: [
                // MoreItemWidget(
                //   iconPath: Res.editProfileIcon,
                //   title: Translate.s.my_profile,
                //   onTap: () => AutoRouter.of(context).push(const AccountSettingRoute()),
                // ),
                // MoreItemWidget(
                //   iconPath: Res.wallet,
                //   title: Translate.s.wallet,
                //   onTap: () => AutoRouter.of(context).push(const WalletRoute()),
                //   showEndWidget: true,
                //   showDivider: true,
                //   endWidget: BaseBlocBuilder(
                //     bloc: controller.balanceBloc,
                //     onSuccessWidget: (data) {
                //       if (_getBalance(data) == "0") {
                //         return const SizedBox();
                //       }
                //       return Text.rich(
                //         TextSpan(
                //           text: _getBalance(data),
                //           style: AppTextStyle.s17_w500(
                //             color: context.colors.appColorBlue,
                //           ).copyWith(
                //             letterSpacing: -0.4,
                //           ),
                //           children: [
                //             TextSpan(
                //                 text:
                //                     " ${controller.getCurrencyTitle(context)}",
                //                 style: AppTextStyle.s17_w500(
                //                   color: context.colors.appColorBlue,
                //                 ).copyWith(
                //                   letterSpacing: -0.4,
                //                   fontFamily: AppConfig.fontCurrencySymbol,
                //                 )),
                //           ],
                //         ),
                //       );
                //     },
                //     onLoadingWidget: (v) => SizedBox(
                //       height: 15,
                //       width: 15,
                //       child: CupertinoActivityIndicator(
                //         color: context.colors.appColorBlue,
                //       ),
                //     ),
                //   ),
                // ),
                MoreItemWidget(
                  iconPath: Res.settingsInvoices,
                  title: Translate.s.my_invoices,
                  onTap: () =>
                      AutoRouter.of(context).push(const InvoicesPageRoute()),
                ),
                // MoreItemWidget(
                //   iconPath: Res.verifiedCheck,
                //   title: Translate.s.trust_and_verification,
                //   onTap: () => AutoRouter.of(context).push(const TrustAndVerificationRoute()),
                // ),
              ],
            ),
          if (!auth)
            MoreItemWidget(
              iconPath: Res.languageMoreIcon,
              title: Translate.s.language,
              onTap: () => controller.changeLanguageLocal(context),
              isLast: true,
              showEndWidget: true,
              endTitle: currentLang == 'ar' ? 'العربية' : 'English',
            ),
        ],
      ),
    );
  }

  // String _getBalance(WalletBalanceModel data) {
  //   var balance = data.availableBalance;
  //   // return getIt<Utilities>().handleThousandFormat(balance.toIntString());
  //   return balance.toIntString();
  // }
}
