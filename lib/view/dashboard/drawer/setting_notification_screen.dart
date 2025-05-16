import 'package:GamStore/view/dashboard/drawer/widget/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/setting_notification_screen.dart';
import '../../../utils/appcolor.dart';
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


