part of 'more_widgets_imports.dart';

class SignOutWidget extends StatelessWidget {
  final bool showSignOut;
  final MorePageController controller;
  const SignOutWidget(
      {super.key, required this.showSignOut, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showSignOut,
      child: GestureDetector(
        onTap: () => controller.showLogoutDialog(context),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          padding: Dimens.paddingAll13PX,
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                Translate.s.sign_out,
                style: AppTextStyle.s17_w600(color: context.colors.red),
              ),
              CustomButtonLoadingWidget(
                loadingObs: controller.signOutLoadingObs,
                alignment: MainAxisAlignment.center,
                child: Gaps.empty,
              )
            ],
          ),
        ),
      ),
    );
  }
}
