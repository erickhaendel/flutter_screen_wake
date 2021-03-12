import 'dart:async';

import 'package:flutter/services.dart';

class FlutterScreenWake {
  static const MethodChannel _channel =
      const MethodChannel('flutter_screen_wake');

  static Future<double> get brightness async => (await _channel.invokeMethod('brightness')) as double;
  static Future setBrightness(double brightness) =>_channel.invokeMethod('setBrightness',{"brightness" : brightness});
  static Future<bool> get isKeptOn async => (await _channel.invokeMethod('isKeptOn')) as bool;
  static Future keepOn(bool on) => _channel.invokeMethod('keepOn', {"on" : on});
}
