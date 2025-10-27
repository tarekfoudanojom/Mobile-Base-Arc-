part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() => _SplashState();

}

class _SplashState extends State<Splash> with WidgetsBindingObserver {
  final SplashController controller = SplashController();

  @override
  void initState() {
    controller.manipulateSaveData(context);
    FlutterNewBadger.removeBadge();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Manually hide the keyboard if it's open
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    });
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent, // optional
    ));
    StreamVideoPushNotificationManager.ensureFullScreenIntentPermission();
    RemoteConfigHelper.instance.initializeRemoteConfig();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(Res.logo), context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      body: const AnimationContainer(
        index: 0,
        duration: Duration(milliseconds: 1800),
        child: Center(
          child: StarLogoWidget(
            logoHeight: 48,
            logoWidth: 50,
            sloganHeight: 32,
            sloganWidth: 100,
          ),
        ),
      ),
    );
  }
}
