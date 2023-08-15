import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_turn_screen_on/android_turn_screen_on_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAndroidTurnScreenOn platform = MethodChannelAndroidTurnScreenOn();
  const MethodChannel channel = MethodChannel('android_turn_screen_on');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
