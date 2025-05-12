import 'package:get/get.dart';

class SettingsNotificationController extends GetxController {
  RxBool showNotifications = true.obs;
  RxBool notificationSounds = true.obs;
  RxBool lockScreenNotifications = false.obs;

  void toggleShowNotifications(bool value) => showNotifications.value = value;
  void toggleNotificationSounds(bool value) => notificationSounds.value = value;
  void toggleLockScreenNotifications(bool value) => lockScreenNotifications.value = value;
}
