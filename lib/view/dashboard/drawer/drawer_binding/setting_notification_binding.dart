import 'package:get/get.dart';

import '../../../../controller/setting_notification_screen.dart';

class SettingNotificationBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(SettingsNotificationController());
  }



}