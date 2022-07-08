import Flutter
import UIKit

public class SwiftTextGradientButtonKrishnaPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "text_gradient_button_krishna", binaryMessenger: registrar.messenger())
    let instance = SwiftTextGradientButtonKrishnaPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
