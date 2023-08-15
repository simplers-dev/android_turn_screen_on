import 'package:flutter_test/flutter_test.dart';
import 'package:android_turn_screen_on/android_turn_screen_on.dart';
import 'package:android_turn_screen_on/android_turn_screen_on_platform_interface.dart';
import 'package:android_turn_screen_on/android_turn_screen_on_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAndroidTurnScreenOnPlatform
    with MockPlatformInterfaceMixin
    implements AndroidTurnScreenOnPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AndroidTurnScreenOnPlatform initialPlatform = AndroidTurnScreenOnPlatform.instance;

  test('$MethodChannelAndroidTurnScreenOn is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAndroidTurnScreenOn>());
  });

  test('getPlatformVersion', () async {
    AndroidTurnScreenOn androidTurnScreenOnPlugin = AndroidTurnScreenOn();
    MockAndroidTurnScreenOnPlatform fakePlatform = MockAndroidTurnScreenOnPlatform();
    AndroidTurnScreenOnPlatform.instance = fakePlatform;

    expect(await androidTurnScreenOnPlugin.getPlatformVersion(), '42');
  });
}
