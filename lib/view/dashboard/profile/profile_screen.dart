import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';
import '../../../constant/routes_name.dart';
import '../../../controller/profile/user_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final UserController controller = Get.put(UserController());

  final List<Map> menuItems = [
    {'icon': AppImage.locationIcon, 'label': 'Address'},
    {'icon': AppImage.walletIcon, 'label': 'Payment Method'},
    {'icon': AppImage.ticketIcon, 'label': 'Voucher'},
    {'icon': AppImage.favoriteIcon, 'label': 'My Wishlist'},
    {'icon': AppImage.stareIcon, 'label': 'Rate this App'},
    {'icon': AppImage.logOutIcon, 'label': 'Log out'},
  ];

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
                    decoration: BoxDecoration(
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Obx(() => Text(controller.email.value)),
          
                  trailing: Image(image: Svg(AppImage.settingIcon)),
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
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: menuItems.length,
                      itemBuilder: (context, index) {
                        final item = menuItems[index];
                        final isLogout = item['label'] == 'Log out';
                        //
                        return GestureDetector(
                          onTap: () {
                            final menu = menuItems[index];
                            if(menu['label'] == "Address"){
                              Get.toNamed(RouteName.addressScreen);
                            }else if(menu['label'] == "Payment Method"){
                              Get.toNamed(RouteName.paymentMethodScreen);
                            }else if(menu['label'] == "Voucher"){
                              Get.toNamed(RouteName.voucherScreen);
                            }else if(menu['label'] == "My Wishlist"){
                              Get.toNamed(RouteName.myWishlistScreen);
                            }else if(menu['label'] == "Rate this App"){
                              Get.toNamed(RouteName.rateThisAppScreen);
                            }else if(menu['label'] == "Log out"){
                              SystemNavigator.pop();
                            }
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
                                      child: Image(image: Svg(item['icon'])),
                                    ),
                                    title: Text(
                                      item['label'],
                                      style: AppTextStyles.onBoardingSubTitle,
                                    ),
                                    trailing:
                                        isLogout
                                            ? null
                                            : Icon(
                                              Icons.arrow_forward_ios,
                                              size: 16,
                                            ),
                                  ),
                                ),
                              ),
                              Divider(color: AppColor.divedertColor),
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
