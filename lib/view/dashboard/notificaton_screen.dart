import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/notification_controller.dart';
import '../../utils/appcolor.dart';
import '../../utils/apptextstyle.dart';
import '../../widgets/common_appbar.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final NotificationController controller = Get.put(NotificationController());

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      // appBar: AppBar(
      //   scrolledUnderElevation: 0.0,
      //   title: const Text("Notification", style: AppTextStyles.drawerSubText),
      //   centerTitle: true,
      //
      //   backgroundColor: AppColor.fontWhite,
      //   elevation: 0,
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: GestureDetector(
      //       onTap: () => Get.back(), // or Navigator.pop(context)
      //       child: Card(
      //         color: AppColor.fontWhite,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         child: Container(
      //           height: 36,
      //           width: 36,
      //           decoration: const BoxDecoration(shape: BoxShape.circle),
      //           child: const Icon(Icons.arrow_back_ios_new, size: 16),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      appBar: commonAppBar(title: "Notification", center: true),
      body: Expanded(
        child: ListView.builder(
          itemCount: controller.notificationsList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              color: AppColor.fontWhite,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.notificationsList[index].title,
                      style: AppTextStyles.tabBarSecondaryText.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      controller.notificationsList[index].subTitle,
                      style: AppTextStyles.drawerOtherText,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
