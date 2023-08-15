
import 'android_turn_screen_on_platform_interface.dart';

class AndroidTurnScreenOn {
  Future<String?> getPlatformVersion() {
    return AndroidTurnScreenOnPlatform.instance.getPlatformVersion();
  }
}
