part of 'more_widgets_imports.dart';

class PartnerWithUsWidget extends StatelessWidget {
  final MorePageController controller;

  const PartnerWithUsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var currentLang = context.watch<DeviceCubit>().state.model.locale.languageCode;
    return InkWell(
      onTap: () => controller.getApplicationQuestions(context),
      child: Padding(
        padding: Dimens.paddingV10PX,
        child: Row(
          children: [
            Expanded(
              child: Text(
                Translate.s.partner_with_us,
                style: AppTextStyle.s16_w400(color: context.colors.black),
              ),
            ),
            ObsValueConsumer<bool>(
              observable: controller.partnersLoadingObs,
              builder: (context, value) => Visibility(
                visible: value,
                replacement: Text(
                  Translate.s.modern,
                  style: AppTextStyle.s13_w400(
                    color: context.colors.textGrayOpacity,
                  ),
                ),
                child: const SizedBox(
                  height: 12,
                  width: 12,
                  child: CircularProgressIndicator(strokeWidth: 1.5),
                ),
              ),
            ),
            Gaps.hGap8,
            Transform.rotate(
              angle: currentLang == "en" ? 0 : 3.1416,
              child: const SvgIconWrapper(size: 11, iconPath: Res.arrowIcon),
            ),
          ],
        ),
      ),
    );
  }
}
