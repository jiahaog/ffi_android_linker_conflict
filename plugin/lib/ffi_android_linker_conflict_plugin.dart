import 'dart:async';

import 'package:flutter/services.dart';

class FfiAndroidLinkerConflictPlugin {
  static const MethodChannel _channel =
      const MethodChannel('ffi_android_linker_conflict_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
