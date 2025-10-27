part of 'more_widgets_imports.dart';

class ThemeModeWidget extends StatelessWidget {
  final MorePageController controller;
  const ThemeModeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var currentLang = context.watch<DeviceCubit>().state.model.locale.languageCode;
    return Padding(
      padding: Dimens.paddingBottom16PX,
      child: Row(
          children: [
            const SvgIconWrapper(size: 25, iconPath: Res.themeModeIcon),
            Gaps.hGap10,
            Expanded(
                child: Text(
                  Translate.s.dark_mode,
                  style: AppTextStyle.s15_w400(color: context.colors.textColor),
                )),
            ObsValueConsumer(
              observable: controller.themeModeSwitchObs,
              builder: (context, value) {
                return FlutterSwitch(
                  inactiveColor: context.colors.grayWhite,
                  activeColor: context.colors.appColorBlue,
                  toggleColor: context.colors.white,
                  toggleSize: 20,
                  width: 40,
                  height: 24,
                  padding: 1.3,
                  value:value,
                  onToggle: (bool value) => onChanged(controller.themeModeSwitchObs, value),
                );
              },
            )
          ]),
    );
  }
  void onChanged(ObsValue<bool> obs, bool value) {
    obs.setValue(value);
    obs.refresh();
  }

}
