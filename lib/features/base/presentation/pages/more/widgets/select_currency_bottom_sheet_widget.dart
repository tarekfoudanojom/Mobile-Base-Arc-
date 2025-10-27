part of 'more_widgets_imports.dart';

class SelectCurrencyBottomSheetWidget extends StatelessWidget {
  final ObsValue<CurrencyEnum> currencyObs;

  const SelectCurrencyBottomSheetWidget({super.key, required this.currencyObs});

  @override
  Widget build(BuildContext context) {
    const dollar = CurrencyEnum.dollar;
    const sar = CurrencyEnum.sar;
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // BottomSheetHeaderWidget(title: Translate.of(context).currency),
            Gaps.vGap22,
            ObsValueConsumer(
              observable: currencyObs,
              builder: (context, obs) {
                return SelectCurrencyItemWidget(
                  value: sar,
                  changedValue: obs,
                  onTap: () => _updateCurrencyStates(sar, context),
                );
              },
            ),
            Gaps.vGap40,
            // Divider(
            //   thickness: 1.5,
            //   indent: 16,
            //   endIndent: 16,
            //   color: context.colors.background1,
            // ),
            // Gaps.vGap23,
            // ObsValueConsumer(
            //   observable: controller.currencyObs,
            //   builder: (context, obs) {
            //     return SelectCurrencyItemWidget(
            //       value: dollar,
            //       changedValue: obs,
            //       onTap: () => _updateCurrencyStates(dollar, context),
            //     );
            //   },
            // ),
            // Gaps.vGap33,
          ],
        ),
      ),
    );
  }

  void _updateCurrencyStates(CurrencyEnum currency, BuildContext context) async {
    currencyObs.setValue(currency);
    await getIt<Utilities>().changeCurrency(context, currency.getCurrencySign());
    Navigator.of(context).pop();
  }
}
