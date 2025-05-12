import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import '../../../controller/setting_notification_screen.dart';
import '../../../widgets/common_appbar.dart';

class SettingNotificationScreen extends StatelessWidget {
  const SettingNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsNotificationController controller = Get.put(SettingsNotificationController());
    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: 'Notification', center: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSwitchTile(
              title: 'Show notifications',
              subtitle: 'Receive push notifications for new messages',
              value: controller.showNotifications,
              onChanged: controller.toggleShowNotifications,
            ),
            const SizedBox(height: 10),
            buildSwitchTile(
              title: 'Notification sounds',
              subtitle: 'Play sound for new messages',
              value: controller.notificationSounds,
              onChanged: controller.toggleNotificationSounds,
            ),
            const SizedBox(height: 10),
            buildSwitchTile(
              title: 'Lock screen notifications',
              subtitle: 'Allow notifications on the lock screen',
              value: controller.lockScreenNotifications,
              onChanged: controller.toggleLockScreenNotifications,
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildSwitchTile({
  required String title,
  required String subtitle,
  required RxBool value,
  required Function(bool) onChanged,
}) {
  return Obx(() => SwitchListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text(subtitle),
    value: value.value,
    onChanged: onChanged,
    activeColor: AppColor.fontWhite,
    activeTrackColor: AppColor.ratingStarColor,
    inactiveThumbColor: AppColor.fontWhite,
    inactiveTrackColor: AppColor.inActiveSwitchColor,
  ));
}
