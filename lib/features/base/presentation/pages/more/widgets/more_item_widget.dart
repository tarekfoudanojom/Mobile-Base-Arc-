part of 'more_widgets_imports.dart';

class MoreItemWidget extends StatelessWidget {
  final String? iconPath;
  final String title;
  final String? endTitle;
  final Widget? endWidget;
  final bool? isLoading;
  final bool isLast;
  final double? iconSize;
  final void Function()? onTap;
  final bool? showEndWidget;
  final bool showDivider;
  final EdgeInsetsGeometry? bottomPadding;
  final Widget? preGap;
  final Widget? itemIcon;

  const MoreItemWidget({
    super.key,
    this.iconPath,
    required this.title,
    this.onTap,
    this.endTitle,
    this.endWidget,
    this.showEndWidget,
    this.bottomPadding,
    this.isLoading,
    this.isLast = false,
    this.iconSize,
    this.showDivider = false,
    this.preGap,
    this.itemIcon,
  });

  @override
  Widget build(BuildContext context) {
    var currentLang =
        context.watch<DeviceCubit>().state.model.locale.languageCode;
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: bottomPadding ?? Dimens.paddingV7PX,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                preGap ?? Gaps.hGap15,
                  Visibility(
                    visible: iconPath != null,
                    replacement: itemIcon ?? Gaps.empty,
                    child: SvgIconWrapper(
                      size: iconSize ?? 20,
                      iconPath: iconPath ?? '',
                      color: context.colors.black.withValues(alpha: .8),
                    ),
                  ),
                if (iconPath != null) Gaps.hGap10,
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: AppTextStyle.s17_w500(
                              color: context.colors.black),
                        ),
                      ),
                      if (isLoading == true)
                        CupertinoActivityIndicator(
                          color: context.colors.appColorBlue,
                        ),
                      _buildEndWidget(context),
                      if (showEndWidget ?? false) Gaps.hGap8,
                      Transform.rotate(
                        angle: currentLang == "en" ? 0 : 3.1416,
                        child: const SvgIconWrapper(
                            size: 17, iconPath: Res.arrowIcon),
                      ),
                      Gaps.hGap12,
                      // Gaps.hGap16,
                    ],
                  ),
                ),
              ],
            ),
            if (!isLast && showDivider) Gaps.vGap15,
            if (!isLast && showDivider)
              Row(
                children: [
                  preGap ?? Gaps.hGap20,
                  if (iconPath != null)
                    SizedBox(width: (iconSize ?? 15), height: 0),
                  if (iconPath != null) Gaps.hGap10,
                  Expanded(
                      child: Gaps.line(
                          height: 1,
                          color: context.colors.greyOpacity,
                          thickness: 0.33)),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Visibility _buildEndWidget(BuildContext context) {
    return Visibility(
      visible: showEndWidget ?? false,
      child: endWidget ??
          Text(
            endTitle ?? "",
            style: AppTextStyle.s17_w400(color: context.colors.grey),
          ),
    );
  }
}
