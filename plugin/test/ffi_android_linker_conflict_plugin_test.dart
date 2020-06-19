import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ffi_android_linker_conflict_plugin/ffi_android_linker_conflict_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('ffi_android_linker_conflict_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FfiAndroidLinkerConflictPlugin.platformVersion, '42');
  });
}
