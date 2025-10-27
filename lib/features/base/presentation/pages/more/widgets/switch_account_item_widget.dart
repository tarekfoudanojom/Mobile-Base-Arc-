part of 'more_widgets_imports.dart';

class SwitchAccountItemWidget extends StatelessWidget {
  final SwitchAccountModel model;
  final MorePageController controller;
  final int accountList;

  const SwitchAccountItemWidget(
      {super.key,
      required this.model,
      required this.controller,
      required this.accountList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll10PX,
      margin: Dimens.paddingBottom10PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius5PX,
      ),
      child: Row(
        children: [
          CachedImage(
            width: 50,
            height: 50,
            haveRadius: false,
            boxShape: BoxShape.circle,
            url:
                "${model.profileModel?.filePath?.pathProfilePicClient}${model.profileModel?.profileImage}",
          ),
          Gaps.hGap8,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.profileModel?.username ?? "",
                  style: AppTextStyle.s15_w600(color: context.colors.textColor),
                ),
                Gaps.vGap5,
                Text(
                  model.profileModel?.email ?? "",
                  style: AppTextStyle.s13_w400(color: context.colors.textColor),
                ),
              ],
            ),
          ),
          Visibility(
            visible: accountList > 1,
            child: GestureDetector(
              onTap: () => controller.removeAccount(context, model),
              child: SvgPicture.asset(
                Res.deleteIcon,
                color: context.colors.red,
                height: 25,
                width: 25,
              ),
            ),
          ),
          Gaps.hGap20,
          GestureDetector(
            onTap: () => controller.onSwitchAccount(context, model),
            child: Container(
              width: 20,
              height: 20,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: model.isSelected == true
                      ? context.colors.appColorBlue
                      : context.colors.dotFrameColor,
                  width: 1.5,
                ),
                color: Colors.transparent,
              ),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: model.isSelected == true
                      ? context.colors.appColorBlue
                      : Colors.transparent,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
