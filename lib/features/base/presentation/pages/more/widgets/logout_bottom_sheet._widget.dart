part of 'more_widgets_imports.dart';

class LogoutBottomSheetWidget extends StatelessWidget {
  final MorePageController controller;

  const LogoutBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var model = context.read<ProfileCubit>().state.model;
    return Container(
      padding: Dimens.paddingTop10PX,
      margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // BottomSheetHeaderWidget(title: Translate.of(context).log_out),
            Gaps.vGap12,
            CachedImage(
              url: "${model?.filePath?.pathProfilePicClient}${model?.profileImage}",
              width: 100,
              height: 100,
              haveRadius: true,
              fit: BoxFit.cover,
              borderRadius: BorderRadius.circular(56),
            ),
            Gaps.vGap12,
            Text(Translate.s.leave_message_warning,
                style: AppTextStyle.s15_w400(color: context.colors.textColor)),
            Gaps.vGap8,
            Text(Translate.s.are_you_sure,
                style: AppTextStyle.s15_w400(color: context.colors.textColor)),
            Gaps.vGap36,
            AppTextButton.maxCustom(
              text: Translate.s.log_out_label,
              margin: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
              bgColor: context.colors.textColor,
              textStyle: AppTextStyle.s16_w600(color: context.colors.white),
              onPressed: () => getIt<UserServicesHelper>().onPressLogout(context),
              borderRadius: 52,
            ),
            AppTextButton.maxCustom(
              text: Translate.s.cancel,
              margin: const EdgeInsets.only(bottom: 33, left: 16, right: 16),
              bgColor: context.colors.white,
              textStyle: AppTextStyle.s16_w600(color: context.colors.textColor),
              onPressed: () => AutoRouter.of(context).maybePop(context),
              borderRadius: 52,
            )
          ],
        ),
      ),
    );
  }
}
