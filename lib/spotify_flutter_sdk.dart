
import 'dart:async';

import 'package:flutter/services.dart';

class SpotifyFlutterSdk {
  static const MethodChannel _channel =
      const MethodChannel('spotify_flutter_sdk');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
