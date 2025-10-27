part of 'more_widgets_imports.dart';

class UserInfoAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final MorePageController controller;

  const UserInfoAppBarWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var model = context.read<ProfileCubit>().state.model;
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      backgroundColor: context.colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: 110,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            url: "${model?.filePath?.pathProfilePicClient}${model?.profileImage}",
            width: 56,
            height: 56,
            haveRadius: true,
            fit: BoxFit.cover,
            borderRadius: BorderRadius.circular(56),
          ),
          Gaps.hGap8,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.vGap4,
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        model?.username ?? "",
                        style: AppTextStyle.s17_w600(color: context.colors.textColor),
                      ),
                    ),
                    Gaps.hGap8,
                    InkWell(
                      onTap: () => controller.switchAccountsBottomSheet(context),
                      child: Image.asset(
                        Res.arrowDown,
                        width: 22,
                        height: 22,
                      ),
                    )
                  ],
                ),
                Gaps.vGap8,
                Text(
                  model?.email ?? "",
                  style: AppTextStyle.s15_w400(color: context.colors.textGrayOpacity),
                ),
              ],
            ),
          ),
          Gaps.hGap12,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}
