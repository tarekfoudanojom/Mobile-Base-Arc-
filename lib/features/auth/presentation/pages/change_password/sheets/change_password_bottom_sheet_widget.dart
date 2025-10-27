part of 'sheets_imports.dart';

class ChangePasswordBottomSheetWidget extends StatefulWidget {
  const ChangePasswordBottomSheetWidget({super.key});

  @override
  State<ChangePasswordBottomSheetWidget> createState() => _ChangePasswordBottomSheetWidgetState();
}

class _ChangePasswordBottomSheetWidgetState extends State<ChangePasswordBottomSheetWidget> {


  final ChangePasswordController controller = ChangePasswordController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: Dimens.paddingAll16PX,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12))
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
                Gaps.vGap5,
                Text(
                  Translate.s.change_password,
                  style: AppTextStyle.s19_w600(color: context.colors.black),
                ),
                Gaps.vGap8,
                Text(
                  Translate.s.password_validation_message,
                  textAlign: TextAlign.start,
                  style: AppTextStyle.s14_w500(color: context.colors.black).copyWith(
                    height: 1.2
                  ),
                ),
                Gaps.vGap30,
              CurrentPasswordWidget(controller: controller),
              NewPasswordWidget(controller: controller),
              ConfirmPasswordWidget(controller: controller),
              Gaps.vGap30,
           ObsValueConsumer(
             observable: controller.activeButtonObs,
             builder: (context, value) {
             return   AppTextButton.maxCustom(
               onPressed: value
                   ?()=>controller.onPressUpdatePass(context)
                   :(){},
               text: Translate.s.save,
               borderColor: _saveButtonColor(value),
               bgColor: _saveButtonColor(value),
               maxHeight: 45,
               borderRadius: 12,
               textStyle: AppTextStyle.s16_w600(
                   color: value
                       ?context.colors.white
                       :context.colors.slightGray.withValues(alpha:0.5)
               ),
             );
           },),
              // NavButtonWidget(
              //   title: Translate.s.save,
              //   activeButtonObs: controller.activeButtonObs,
              //   radius: 12,
              //   btnKey: controller.btnKey,
              //   height: 55,
              //   nonActiveColor: context.colors.mystic,
              //   horizontalMargin: 0,
              //   canClick: false,
              //   onTap: () => AutoRouter.of(context).push(const ChangePasswordConfirmPageRoute()),
              // ),
              Gaps.vGap10,
              AppTextButton.maxCustom(
                text: Translate.s.cancel,
                onPressed: ()=>controller.onPressCancel(context),
                borderColor: Colors.transparent,
                bgColor: Colors.transparent,
                maxHeight: 55,
                borderRadius: 12,
                textStyle: AppTextStyle.s16_w600(color: context.colors.appColorBlue,),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color _saveButtonColor(bool value){
    return value
        ?context.colors.black
        :context.colors.mystic;
  }

}
