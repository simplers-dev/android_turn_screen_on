import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_turn_screen_on_platform_interface.dart';

/// An implementation of [AndroidTurnScreenOnPlatform] that uses method channels.
class MethodChannelAndroidTurnScreenOn extends AndroidTurnScreenOnPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('android_turn_screen_on');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
