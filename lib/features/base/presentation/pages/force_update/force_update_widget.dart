part of 'force_update_imports.dart';

@RoutePage(name: "ForceUpdateWidgetRoute")
class ForceUpdateWidget extends StatelessWidget {
  final String storeUrl;

  const ForceUpdateWidget({super.key, required this.storeUrl});

  @override
  Widget build(BuildContext context) {
    context.read<DeviceCubit>().updateWhatsAppMode(false);
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.black.withValues(alpha: 0.2),
          child: SafeArea(
            child: Center(
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      Translate.s.update_required_title,
                      style: AppTextStyle.s18_w600(color: context.colors.black),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      Translate.s.update_required_message,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.s13_w400(color: context.colors.black)
                          .copyWith(height: 1.2),
                    ),
                    Gaps.line(
                        thickness: 0.33,
                        color: context.colors.grayWhite,
                        height: 24),
                    SmartButton(
                      state: SmartButtonState.active,
                      onPressed: () async {
                        final url = Uri.parse(storeUrl);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication);
                        } else {
                          // Handle error: URL could not be launched
                          print("Could not launch $storeUrl");
                        }
                      },
                      height: 20,
                      loaderColor: context.colors.appColorBlue,
                      title: Translate.s.update_now,
                      titleStyle: AppTextStyle.s18_w700(
                          color: context.colors.appColorBlue),
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
