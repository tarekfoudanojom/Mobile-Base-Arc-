part of 'more_widgets_imports.dart';

class LangBottomSheetWidget extends StatelessWidget {
  final ObsValue<String> langObs;
  final Function() onChangeLang;
  const LangBottomSheetWidget({super.key, required this.langObs, required this.onChangeLang});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      child: SingleChildScrollView(
        child: ObsValueConsumer(
          observable: langObs,
          builder: (context, value) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // BottomSheetHeaderWidget(title: Translate.s.language),
                Gaps.vGap22,
                LangItemWidget(
                  value: "en",
                  changedValue: value,
                  onTap: () => _updateLangObs(context, value),
                ),
                Gaps.vGap23,
                Divider(
                  thickness: 1.5,
                  indent: 16,
                  endIndent: 16,
                  color: context.colors.background1,
                ),
                Gaps.vGap23,
                LangItemWidget(
                  value: "ar",
                  changedValue: value,
                  onTap: () => _updateLangObs(context, value),
                ),
                Gaps.vGap33,
              ],
            );
          },
        ),
      ),
    );
  }

  void _updateLangObs(BuildContext context, String value) {
    langObs.setValue(value);
    onChangeLang();
    Navigator.of(context).pop();
  }
}
