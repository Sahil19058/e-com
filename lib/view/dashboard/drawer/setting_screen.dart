import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../../constant/routes_name.dart';
import '../../../controller/settings_controller.dart';
import '../../../utils/appcolor.dart';
import '../../../utils/apptextstyle.dart';
import '../../../widgets/common_appbar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsController controller = Get.put(SettingsController());

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: 'Settings', center: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Flexible(
              child: ListView.builder(
                itemCount: controller.settingsList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Get.snackbar(
                              "Coming soon",
                              "This Screen is not available",
                            );
                          } else if (index == 1) {
                            Get.toNamed(RouteName.settingNotificationScreen);
                          } else if (index == 2) {
                            Get.snackbar(
                              "Coming soon",
                              "This Screen is not available",
                            );
                          } else if (index == 3) {
                            Get.snackbar(
                              "Coming soon",
                              "This Screen is not available",
                            );
                          } else if (index == 4) {
                            Get.snackbar(
                              "Coming soon",
                              "This Screen is not available",
                            );
                          }
                        },
                        child: ListTile(
                          leading: Image(
                            image: Svg(
                              controller.settingsList[index].settingsIcon,
                            ),
                          ),
                          title: Text(
                            controller.settingsList[index].settingsTitle,
                            style: AppTextStyles.tabBarSecondaryText,
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Divider(color: AppColor.divedertColor),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
