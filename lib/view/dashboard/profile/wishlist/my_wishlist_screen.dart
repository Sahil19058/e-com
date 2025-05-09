import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/my_wishlist_controller.dart';
import '../../../../utils/appcolor/appcolor.dart';
import '../../../../utils/apptextstyle/apptextstyle.dart';
import '../../../../widgets/common_appbar.dart';
import 'all_items_screen.dart';
import 'board_screen.dart';

class MyWishlistScreen extends StatelessWidget {
  const MyWishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final TabControllerX controller = Get.put(TabControllerX());
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;


    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: "My Wishlist",center: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: Obx(
                    () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(controller.tabs.length, (index) {
                    bool isSelected = controller.selectedIndex.value == index;
                    return Expanded(
                      child: GestureDetector(
                        onTap: () => controller.changeTab(index),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColor.fontBlack
                                : Colors.transparent,
                            // borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Text(
                              controller.tabs[index],
                              style: isSelected
                                  ? AppTextStyles.subtitle
                                  : AppTextStyles.drawerSubText,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Obx(() {
              switch (controller.selectedIndex.value) {
                case 0:
                  return AllItemsScreen();
                case 1:
                  return BoardScreen();
                default:
                  return SizedBox();
              }
            }),
          ],
        ),
      ),
    );
  }
}
