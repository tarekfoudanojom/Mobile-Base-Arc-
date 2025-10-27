part of 'active_account_widgets_imports.dart';

class ActiveButtonWidget extends StatelessWidget {
  final ActiveAccountController controller;
  final ActiveAccTypes type;

  const ActiveButtonWidget({super.key, required this.controller, required this.type});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc: controller.codeCubit,
      onSuccessWidget: (data) {
        return AbsorbPointer(
          absorbing: !data,
          child: ObsValueConsumer(
            observable: controller.loadingObs,
            builder: (context, value) => LoadingButton(
              title: Translate.s.submit,
              onTap: () => controller.onPressNext(type, context),
              color: context.colors.appColorBlue,
              textColor: context.colors.white,
              btnKey: controller.btnKey,
              borderRadius: 10,
              height: 44,
              margin: const EdgeInsets.symmetric(vertical: 24),
              titleTextStyle: AppTextStyle.s16_w600(color: context.colors.white),
              child: value ? const CupertinoActivityIndicator() : null,
            ),
          ),
        );
      },
    );
  }
}
