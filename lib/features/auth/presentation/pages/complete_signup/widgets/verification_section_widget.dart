part of 'complete_signup_widgets_imports.dart';

class VerificationSectionWidget extends StatelessWidget {
  final CompleteSignUpController controller;

  const VerificationSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingH16V5PX,
      padding: Dimens.paddingAll13PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () =>
            AutoRouter.of(context).push(const TrustAndVerificationRoute()),
        child: InfoItemWidget(
          infoEntity: controller.verification,
          isLast: true,
        ),
      ),
    );
  }
}
