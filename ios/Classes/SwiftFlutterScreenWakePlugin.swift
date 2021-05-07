import Flutter
import UIKit

public class SwiftFlutterScreenWakePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_screen_wake", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterScreenWakePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
        case "brightness":
            result(UIScreen.main.brightness);
        case "setBrightness":
            if let args = call.arguments as? Dictionary<String, Any>,
               let brightness = args["brightness"] as? Double {
                UIScreen.main.brightness = CGFloat(brightness)
                result(nil);
            }
        case "isKeptOn":
            result(UIApplication.shared.isIdleTimerDisabled);
        case "keepOn":
            if let args = call.arguments as? Dictionary<String, Any>,
               let keepOn = args["on"] as? Bool {
                UIApplication.shared.isIdleTimerDisabled = keepOn
                result(nil);
            }
        default:
            result(FlutterMethodNotImplemented);
    }
  }
}
