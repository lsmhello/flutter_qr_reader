import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class FlutterQrReader {
  static const MethodChannel _channel = const MethodChannel('me.hetian.plugins/flutter_qr_reader');

  static Future<String> imgScan(String path) async {
    try {
      final rest = await _channel.invokeMethod("imgQrCode", {"file": path});
      return rest;
    } catch (e) {
      debugPrint(e.toString());
      return '';
    }
  }
}

