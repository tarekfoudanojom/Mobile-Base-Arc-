part of 'download_nogom_imports.dart';

@RoutePage(name: "DownloadNogomDialogRoute")
class DownloadNogomDialog extends StatelessWidget {
  const DownloadNogomDialog({super.key});

  /// Android app link
  static const String androidAppLink = 'https://play.google.com/store/apps/details?id=com.influencer.agent';
  
  /// iOS app link
  static const String iosAppLink = 'https://apps.apple.com/us/app/nojom-app-for-stars/id6463190220';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: context.colors.white,
        appBar: AppBar(
          backgroundColor: context.colors.white,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Phone mockup image with shadow
                _PhoneMockupWidget(),
                
                Gaps.vGap20,
                
                // Title
                Text(
                  Translate.s.migrate_to_nogom_title,
                  style: AppTextStyle.s24_w600(
                    color: context.colors.textPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                Gaps.vGap8,
                
                // Description
                Text(
                  Translate.s.migrate_to_nogom_description,
                  style: AppTextStyle.s16_w400(
                    color: context.colors.textTertiary,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                const Spacer(),

                // Download button
                _DownloadButton(
                  onPressed: () => _launchAppStore(),
                ),
                Gaps.vGap16,
                // Subtitle
                Text(
                  Translate.s.migrate_to_nogom_subtitle,
                  style: AppTextStyle.s16_w400(
                    color: const Color(0xFF535862),
                  ),
                  textAlign: TextAlign.center,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchAppStore() async {
    final String appStoreUrl = Platform.isAndroid ? androidAppLink : iosAppLink;
    final url = Uri.parse(appStoreUrl);
    
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print("Could not launch $appStoreUrl");
    }
  }
}

/// Phone mockup widget with shadow effects
class _PhoneMockupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      // decoration: BoxDecoration(
      //   boxShadow: [
      //     BoxShadow(
      //       color: const Color(0xFF0A0C12).withValues(alpha: 0.04),
      //       blurRadius: 4,
      //       offset: const Offset(0, 4),
      //       spreadRadius: -2,
      //     ),
      //     BoxShadow(
      //       color: const Color(0xFF0A0C12).withValues(alpha: 0.18),
      //       blurRadius: 48,
      //       offset: const Offset(0, 24),
      //       spreadRadius: -12,
      //     ),
      //   ],
      // ),
      child: Image.asset(
        Res.downloadNogomFrame,
        width: 270,
        height: 359,
        fit: BoxFit.fill,
      ),
    );
  }
}

/// Download button widget matching Figma design
class _DownloadButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _DownloadButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF004EEB), Color(0xFF004EEB)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0040C1).withValues(alpha: 0.31),
            blurRadius: 14,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
            child: Center(
              child: Text(
                Translate.s.migrate_to_nogom_button,
                style: AppTextStyle.s18_w600(
                  color: context.colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

