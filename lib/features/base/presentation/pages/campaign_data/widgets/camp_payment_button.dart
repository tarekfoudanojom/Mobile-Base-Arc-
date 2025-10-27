part of 'campaign_data_widgets_imports.dart';

class CampPaymentButton extends StatelessWidget {
  final CampaignDataController controller;
  final bool showLoading;
  final String amount;
  final int? campaignId;
  final double? delegationFeeRate;
  const CampPaymentButton({
    super.key,
    required this.controller,
    required this.showLoading,
    required this.amount,
    this.campaignId,
    this.delegationFeeRate,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.buttonObs,
      builder: (context, value) {
        return Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 16),
          color: context.colors.white,
          child: LoadingButton(
            margin: EdgeInsets.zero,
            title: Translate.s.go_to_payment,
            btnKey: controller.btnKey,
            borderRadius: 10,
            height: 38.h,
            onTap: () {
              if (value) {
                controller.createCampaign(
                    context, amount, campaignId, delegationFeeRate);
              }
            },
            fontSize: 16,
            color: value
                ? context.colors.appColorBlue
                : context.colors.greyOpacity,
            borderColor: value
                ? context.colors.appColorBlue
                : context.colors.greyOpacity,
            child: showLoading ? const CupertinoActivityIndicator() : null,
          ),
        );
      },
    );
  }
}

class CampPaymentButton1 extends StatelessWidget {
  final CampaignDataController controller;
  final String amount;
  final int? campaignId;
  final double? delegationFeeRate;
  const CampPaymentButton1({
    super.key,
    required this.controller,
    required this.amount,
    this.campaignId,
    this.delegationFeeRate,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.paymentBtnObs,
      builder: (context, value) {
        return SmartButton(
          state: value,
          isMaxWidth: true,
          containerBackgroundColor: context.colors.white,
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          onPressed: () async {
            controller.createCampaign(
                context, amount, campaignId, delegationFeeRate);
          },
          title: Translate.s.go_to_payment,
        );
      },
    );
  }
}
