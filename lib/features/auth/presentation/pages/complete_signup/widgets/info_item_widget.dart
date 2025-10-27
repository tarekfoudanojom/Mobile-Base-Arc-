part of 'complete_signup_widgets_imports.dart';

class InfoItemWidget extends StatelessWidget {
  final SignupInfoEntity infoEntity;
  final Function()? onTap;
  final bool isLast;
  const InfoItemWidget(
      {super.key, required this.infoEntity, this.onTap, required this.isLast});

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: Dimens.paddingAll16PX,
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      infoEntity.title,
                      style: AppTextStyle.s14_w400(
                          color: context.colors.textPrimary),
                    ),
                    if (infoEntity.isOptional ?? false) ...[
                      Gaps.hGap4,
                      Text(
                        "(${Translate.s.optional})",
                        style: AppTextStyle.s14_w400(
                            color: context.colors.ashGray2),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Gaps.hGap4,
                    ]
                  ],
                ),
                if (infoEntity.subTitle != null)
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      "${_checkNullableValue(infoEntity.subTitle)} ${_checkNullableValue(infoEntity.secondValue)}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: lang == 'ar' ? TextAlign.start : TextAlign.end,
                      style:
                          AppTextStyle.s14_w400(color: context.colors.ashGray2)
                              .copyWith(letterSpacing: .1),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                if (infoEntity.subTitle == null) const Spacer(),
                Gaps.hGap6,
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: context.colors.grey,
                ),
              ],
            ),
          ),
          if (!isLast)
            Padding(
              padding: EdgeInsets.fromLTRB(
                  lang == 'ar' ? 0 : 16, 0, lang == 'ar' ? 16 : 0, 0),
              child: Gaps.line(
                height: 1,
                color: context.colors.greyOpacity,
                thickness: 0.33,
              ),
            ),
        ],
      ),
    );
  }

  String _checkNullableValue(String? value) {
    if (value == null || value.contains('null')) {
      return '';
    } else {
      return value;
    }
  }
}
