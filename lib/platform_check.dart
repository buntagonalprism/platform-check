import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

enum Platform {
  Android,
  iOS,
  Web,
}

class PlatformCheck {
  static const MethodChannel _channel =
      const MethodChannel('com.buntagon/platform_check');

  static Future<Platform> get platform async {
    final String platformName = await _channel.invokeMethod('getPlatform');
    return Platform.values.firstWhere((Platform platform) => describeEnum(platform) == platformName);
  }
}
