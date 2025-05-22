import 'package:get/get.dart';
import '../constant/routes_name.dart';
import '../model/settings_model.dart';
import '../utils/appimage.dart';

class SettingsController extends GetxController {
  List<SettingModel> settingsList = [
    SettingModel(AppImage.languageIcon, "Language"),
    SettingModel(AppImage.settingNotificationIcon, "Notification  "),
    SettingModel(AppImage.termsIcon, "Terms of Use"),
    SettingModel(AppImage.privacyPolicyIcon, "Privacy Policy"),
    SettingModel(AppImage.chatSupportIcon, "Chat Support"),
  ];

  void settingsIndex(int index) {
    if (index == 0) {
      Get.snackbar("Coming soon", "This Screen is not available");
    } else if (index == 1) {
      Get.toNamed(RouteName.settingNotificationScreen);
    } else if (index == 2) {
      Get.snackbar("Coming soon", "This Screen is not available");
    } else if (index == 3) {
      Get.snackbar("Coming soon", "This Screen is not available");
    } else if (index == 4) {
      Get.snackbar("Coming soon", "This Screen is not available");
    }
  }
}
