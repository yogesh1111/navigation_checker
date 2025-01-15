import 'dart:async';
import 'package:flutter/services.dart';

class BottomNavigationDetector {
  static const MethodChannel _channel = MethodChannel('bottom_navigation_detector');

  static Future<bool> isThreeButtonNavigationEnabled() async {

    try {
      final bool result = await _channel.invokeMethod('isThreeButtonNavigationEnabled');
      return result;
    } catch (e) {
      return false; // Return false in case of any error
    }
  }
}
