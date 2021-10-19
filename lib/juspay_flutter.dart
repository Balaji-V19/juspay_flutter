import 'dart:async';

import 'package:flutter/services.dart';

class JuspayFlutter {
  static const MethodChannel _channel =
      const MethodChannel('juspay_flutter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
