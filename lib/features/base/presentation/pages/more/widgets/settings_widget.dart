part of 'more_widgets_imports.dart';

class SettingsWidget extends StatelessWidget {
  final MorePageController controller;

  const SettingsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MoreItemWidget(
          iconPath: Res.notificationIcon,
          title: Translate.s.notification,
          onTap: () =>
              AutoRouter.of(context).push(const NotifySettingsPageRoute()),
        ),
        Gaps.vGap8,
        ObsValueConsumer(
          observable: controller.langObs,
          builder: (context, value) {
            return MoreItemWidget(
              showEndWidget: true,
              iconPath: Res.langIcon,
              title: Translate.s.language,
              endTitle: controller.setLangItemEndTitle(context),
              onTap: () => controller.changeLangBottomSheet(context),
            );
          },
        ),
        Gaps.vGap8,
        ObsValueConsumer(
          observable: controller.currencyObs,
          builder: (BuildContext context, value) {
            return MoreItemWidget(
              showEndWidget: true,
              iconPath: Res.currencyIcon,
              title: Translate.s.currency,
              endTitle: controller.getCurrencyTitle(context),
              onTap: () => controller.showCurrencyBottomSheet(context),
            );
          },
        ),
        // Gaps.line(color: context.colors.slightBlueGray),
        // Gaps.vGap8,
        // ThemeModeWidget(controller: controller),
        Gaps.vGap8,
        MoreItemWidget(
          iconPath: Res.markLocationIcon,
          title: Translate.s.location,
          onTap: () =>
              AutoRouter.of(context).push(const SettingsLocationsPageRoute()),
        ),
      ],
    );
  }
}
