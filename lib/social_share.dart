
import 'social_share_platform_interface.dart';

class SocialShare {
  Future<String?> getPlatformVersion() {
    return SocialSharePlatform.instance.getPlatformVersion();
  }
}
