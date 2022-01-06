
import 'dart:async';

import 'package:flutter/services.dart';

class NetDemoYu {
  static const MethodChannel _channel = MethodChannel('net_demo_yu');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
