import Flutter
import UIKit

public class SwiftFfiAndroidLinkerConflictPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ffi_android_linker_conflict_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFfiAndroidLinkerConflictPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
