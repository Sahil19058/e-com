import 'package:get/get.dart';

import '../model/settings_model.dart';
import '../utils/appimage.dart';

class SettingsController extends GetxController{

  List<SettingModel> settingsList = [

    SettingModel(AppImage.languageIcon, "Language"),
    SettingModel(AppImage.settingNotificationIcon, "Notification  "),
    SettingModel(AppImage.termsIcon, "Terms of Use"),
    SettingModel(AppImage.privacyPolicyIcon, "Privacy Policy"),
    SettingModel(AppImage.chatSupportIcon, "Chat Support"),

  ];
}
