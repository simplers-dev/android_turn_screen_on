import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_turn_screen_on_method_channel.dart';

abstract class AndroidTurnScreenOnPlatform extends PlatformInterface {
  /// Constructs a AndroidTurnScreenOnPlatform.
  AndroidTurnScreenOnPlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidTurnScreenOnPlatform _instance = MethodChannelAndroidTurnScreenOn();

  /// The default instance of [AndroidTurnScreenOnPlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidTurnScreenOn].
  static AndroidTurnScreenOnPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidTurnScreenOnPlatform] when
  /// they register themselves.
  static set instance(AndroidTurnScreenOnPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
