import Flutter
import UIKit

public class SwiftPlatformCheckPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.buntagon/platform_check", binaryMessenger: registrar.messenger())
    let instance = SwiftPlatformCheckPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch (call.method) {
      case "getPlatform":
        result("iOS")
        break;
      default:
        result(FlutterMethodNotImplemented)
    }
  }
}
