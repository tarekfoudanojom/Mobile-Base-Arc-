import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/res.dart';

class VerifyYourAccountWidget extends StatelessWidget {
  const VerifyYourAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.93,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      decoration: BoxDecoration(
        color: context.colors.background1,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Fixed drag bar
          Center(
            child: Container(
              width: 45,
              height: 6,
              decoration: BoxDecoration(
                color: context.colors.mistGray2,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          Gaps.vGap16,

          // Fixed Cancel button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context, false),
                child: Text(
                  Translate.s.cancel,
                  style: AppTextStyle.s17_w600(
                    color: context.colors.appColorBlue,
                  ),
                ),
              ),
            ],
          ),

          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Gaps.vGap16,
                  Center(
                    child: Image.asset(
                      Res.verifyLogoRegistrationPng,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Text(
                    Translate.s.verify_your_account_now,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.s30_w600(color: context.colors.black),
                  ),
                  Gaps.vGap8,
                  Text(
                    Translate.s
                        .verify_your_account_by_completing_your_profile_information_to_access_all_the_features_on_the_nojoom_platform,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.s16_w400(
                      color: context.colors.blackOpacity,
                    ).copyWith(height: 1.2),
                  ),
                  Gaps.vGap40,
                  Container(
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        _buildCard(
                          iconName: Res.starsBlue,
                          title: Translate.s.ai_that_simplifies_every_step,
                          description: Translate.s.ai_description,
                          context: context,
                          isLast: false,
                        ),
                        _buildCard(
                          iconName: Res.shoppingCart,
                          title: Translate.s.request_an_ad_in_minutes,
                          description: Translate.s.request_ad_description,
                          context: context,
                          isLast: false,
                        ),
                        _buildCard(
                          iconName: Res.messageChatCircle,
                          title: Translate.s.connect_with_influencers,
                          description: Translate.s.connect_description,
                          context: context,
                          isLast: true,
                        ),
                      ],
                    ),
                  ),
                  Gaps.vGap16,
                ],
              ),
            ),
          ),

          // Fixed Bottom Button
          AppTextButton.maxCustom(
            text: Translate.s.start_verification,
            maxHeight: 56,
            onPressed: () {
              Navigator.pop(context, true);
            },
            bgColor: context.colors.appColorBlue,
            borderColor: context.colors.appColorBlue,
            textStyle: AppTextStyle.s16_w700(
              color: context.colors.white,
            ),
            borderRadius: 16.0,
          ),
          Gaps.vGap32,
        ],
      ),
    );
  }

  Widget _buildCard({
    required String iconName,
    required String title,
    required String description,
    required BuildContext context,
    required bool isLast,
  }) {
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gaps.hGap16,
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  iconName,
                  height: 34,
                  width: 34,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.vGap16,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Text(
                        title,
                        style: AppTextStyle.s16_w600(
                          color: context.colors.textPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Text(
                        description,
                        style: AppTextStyle.s14_w400(
                          color: context.colors.textTertiary,
                        ),
                      ),
                    ),
                    Gaps.vGap16,
                    // if (!isLast)
                    //   Padding(
                    //     padding: EdgeInsets.fromLTRB(
                    //       lang == "ar" ? 0 : 16,
                    //       0,
                    //       lang == "ar" ? 16 : 0,
                    //       0,
                    //     ),
                    //     child: Gaps.line(
                    //       height: 1,
                    //       color: context.colors.greyOpacity,
                    //       thickness: 0.33,
                    //     ),
                    //   ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
