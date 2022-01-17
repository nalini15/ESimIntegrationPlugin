import Flutter
import UIKit

public class SwiftEsimIntegrationPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "esim_integration", binaryMessenger: registrar.messenger())
    let instance = SwiftEsimIntegrationPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if(call.method.elementsEqual("show compatibitlity")){
        let arguments =  call.arguments as? NSDictionary
        _ =  arguments?["msg"] as? String

    }
    result("iOS " + UIDevice.current.systemVersion)
  }
}
