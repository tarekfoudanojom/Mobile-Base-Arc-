import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
    var displayLink : CADisplayLink?
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      // Register for push notifications.
      if #available(iOS 10.0, *) {
          UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
        }
    GeneratedPluginRegistrant.register(with: self)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    @objc func displayLinkCallback() {
         // let workingTime = displayLink!.targetTimestamp - CACurrentMediaTime()
         // At this moment in time, there are `workingTime` seconds available to
         // generate content for the next frame, so
         // Core Animation can render it to the display.
       }
}
