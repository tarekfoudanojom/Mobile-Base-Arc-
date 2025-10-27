import 'dart:ui';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/routes/router_imports.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/options_requester/option_controller.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/sheet/option_sheet_content.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/delete_bottom_sheet_widget.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/save_changes_bottom_sheet_widget.dart';
import 'package:flutter_tdd/features/base/data/models/member_client_delegation_model/member_client_delegation_model.dart';
import 'package:flutter_tdd/features/base/presentation/pages/login/sign_in_bottom_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/more/widgets/more_widgets_imports.dart';
import 'package:get_it/get_it.dart';

abstract class AppBottomSheets {
  const AppBottomSheets._();

  static Future<T?> showScrollableBodyFixedHeaderSheet<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) {
    return showModalBottomSheet<T>(
        context: context,
        backgroundColor: Colors.transparent,
        isDismissible: true,
        isScrollControlled: false,
        enableDrag: false,
        builder: builder);
  }

  static Future<T?> showScrollableBody<T>(
      {required BuildContext context,
      required WidgetBuilder builder,
      BoxConstraints? constraints,
      bool enableDrag = true}) async {
    return await showModalBottomSheet<T>(
      context: context,
      backgroundColor: Colors.transparent,
      isDismissible: true,
      elevation: 0,
      isScrollControlled: true,
      enableDrag: enableDrag,
      constraints: constraints,
      shape: const OutlineInputBorder(
        borderRadius: Dimens.sheetBorderRadius,
        borderSide: BorderSide.none,
      ),
      builder: builder,
    );
  }

  static Future<void> showOptionsBottomSheet<T>({
    String? bottomSheetTitle,
    required bool showSearch,
    void Function(String v)? onSearch,
    required VoidCallback onSaveTextPressed,
    VoidCallback? onCancelPressed,
    String? customSaveText,
    required OptionController<T> controller,
    required WidgetBuilder contentBuilder,
    required BuildContext context,
    EdgeInsets? contentPadding,
    double? height,
    bool isDismissible = false,
    bool enableDrag = false,
    ObsValue<bool?>? addNewOptionEnabledObs,
    String? addNewOptionButtonText,
    VoidCallback? onAddNewOptionPressed,
    bool isViewMode = false,
  }) async {
    /// to reset temp value when open bottom sheet
    controller.tempValue = controller.selectedValue;

    await showModalBottomSheet(
      context: context,
      elevation: 0.0,
      isDismissible: isDismissible,
      isScrollControlled: true,
      enableDrag: enableDrag,
      backgroundColor: context.colors.white,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.35),
      shape: const OutlineInputBorder(
          borderRadius: Dimens.sheetBorderRadius, borderSide: BorderSide.none),
      builder: (context) {
        return ObsValueConsumer(
            observable: addNewOptionEnabledObs ?? ObsValue.withInit(false),
            builder: (context, addNewOptionEnabled) {
              return GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
                child: OptionSheetContent(
                  controller: controller,
                  onSearch: onSearch,
                  contentBuilder: contentBuilder,
                  bottomSheetTitle: bottomSheetTitle,
                  onSaveTextPressed: onSaveTextPressed,
                  customSaveText: customSaveText,
                  showSearch: showSearch,
                  height: height,
                  contentPadding: contentPadding,
                  addNewOptionEnabled: addNewOptionEnabled,
                  addNewOptionButtonText: addNewOptionButtonText,
                  onAddNewOptionPressed: onAddNewOptionPressed,
                  isViewMode: isViewMode,
                ),
              );
            });
      },
    );
  }

  static void showReportDialog(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController descriptionController = TextEditingController();
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16.0),
            ),
          ),
          child: SafeArea(
            top: true,
            bottom: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    Translate.of(context).send_report,
                    style: AppTextStyle.s18_w500(color: context.colors.black),
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GenericTextField(
                        fieldTypes: FieldTypes.rich,
                        type: TextInputType.multiline,
                        hint: Translate.of(context).message,
                        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        action: TextInputAction.newline,
                        validate: (value) => value?.noValidate(),
                        maxLines: 5,
                        controller: descriptionController,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0), // Spacing between form and buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Cancel Button
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(
                            color: context.colors.appColorBlue,
                            width: 1.0,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      child: Text(
                        Translate.s.cancel,
                        style: AppTextStyle.s16_w500(color: context.colors.appColorBlue),
                      ),
                    ),
                    const SizedBox(width: 12.0), // Spacing between buttons
                    // Submit Button
                    ElevatedButton(
                      onPressed: () async {
                        if (descriptionController.text.isNotEmpty) {
                          getIt<LoadingHelper>().showLoadingDialog();
                          await Future.delayed(const Duration(seconds: 1));
                          getIt<LoadingHelper>().dismissDialog();
                          AppSnackBar.showSimpleToast(msg: Translate.of(context).sent_successfully);
                          descriptionController.clear();
                          Navigator.of(context).pop();
                        } else {
                          AppSnackBar.showSimpleToast(msg: Translate.of(context).fillField);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colors.appColorBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        Translate.s.submit,
                        style: AppTextStyle.s16_w500(color: context.colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<T> showMemberClientsBottomSheet<T>({
    required BuildContext context,
    required Function(MemberClientDelegationModel) onAccountSelected,
  }) async {
    return await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.5),
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: ClientAccountsBottomSheetWidget(
          onAccountSelected: onAccountSelected,
        ),
      ),
    );
  }


  static void showSignInSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) {
        return const SignInBottomSheet();
      },
    );
  }


}

class SheetActionButton {
  final String title;
  final VoidCallback onPressed;

  const SheetActionButton({required this.title, required this.onPressed});

  factory SheetActionButton.cancel() {
    return SheetActionButton(
        title: Translate.s.cancel, onPressed: () => GetIt.instance<AppRouter>().maybePop());
  }
}

class ProfileBottomSheets {
  static void showDeleteBottomSheet(
      {required BuildContext context,
      required String title,
      required String subtitle,
      required Function() onPressKeepIt,
      required Function() onPressDelete,
      bool? showSureText}) {
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (ctx) {
        return DeleteBottomSheetWidget(
          title: title,
          subtitle: subtitle,
          showSureText: showSureText,
          onPressKeepIt: onPressKeepIt,
          onPressDelete: onPressDelete,
        );
      },
    );
  }

  static void showCheckChangesSheet(BuildContext context,
      {required void Function() onDiscard, required void Function() onSave}) {
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (ctx) {
        return SaveChangesBottomSheetWidget(
          onPressDiscard: onDiscard,
          onPressSave: onSave,
        );
      },
    );
  }
}
