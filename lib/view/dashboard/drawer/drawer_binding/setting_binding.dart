import 'package:get/get.dart';

import '../../../../controller/settings_controller.dart';

class SettingBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SettingsController());
  }

}