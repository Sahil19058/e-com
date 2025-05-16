import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../../constant/routes_name.dart';
import '../../../controller/user_controller.dart';
import '../../../utils/appcolor.dart';
import '../../../utils/appimage.dart';
import '../../../utils/apptextstyle.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final UserController controller = Get.put(UserController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Container(
                    width: 68,
                    height: 68,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImage.avatarImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Obx(
                    () => Text(
                      controller.name.value,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Obx(() => Text(controller.email.value)),
          
                  trailing: GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteName.settingScreen);
                    },
                      child: const Image(image: Svg(AppImage.settingIcon))),
                ),
              ),
          
              const SizedBox(height: 40),
          
              // Card(
              //   color: AppColor.fontWhite,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(16),
              //   ),
              //   margin: EdgeInsets.symmetric(horizontal: 16),
              //   elevation: 4,
              //   child: Column(
              //     children:
              //     menuItems.map((item) {
              //       return ListTile(
              //         leading: Container(
              //           height: 24,
              //           width: 24,
              //           child: Image(image: Svg(item['icon'])),
              //         ),
              //         title: Text(item['label']),
              //         trailing: Icon(Icons.arrow_forward_ios, size: 16),
              //         onTap: () {
              //           if (item['label'] == 'Log out') {
              //             controller.logout();
              //           } else {}
              //           },
              //       );
              //     }).toList(),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  color: AppColor.fontWhite,
                  child: SizedBox(
                    height: 440,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.menuItems.length,
                      itemBuilder: (context, index) {
                        final item = controller.menuItems[index];
                        final isLogout = item.label == 'Log out';
                        //
                        return GestureDetector(
                          onTap: () {
                            controller.checkProfileIndex(index);

                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: SizedBox(
                                  height: 55,
                                  child: ListTile(
                                    leading: SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: Image(image: Svg(item.icon ?? "")),
                                    ),
                                    title: Text(
                                      item.label ?? "",
                                      style: AppTextStyles.onBoardingSubTitle,
                                    ),
                                    trailing:
                                    isLogout
                                        ? null
                                        : const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(color: AppColor.divedertColor),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
