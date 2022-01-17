
import 'dart:async';

import 'package:flutter/services.dart';

class EsimIntegration {
  static const MethodChannel _channel =
      const MethodChannel('esim_integration');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Null> checkESimCompatibitlity(String msg)async{
    await _channel.invokeMethod('showingESimCompatibility');
    return null;
  }
}
