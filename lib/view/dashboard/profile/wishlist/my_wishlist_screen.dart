import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/my_wishlist_controller.dart';
import '../../../../utils/appcolor/appcolor.dart';
import '../../../../utils/apptextstyle/apptextstyle.dart';
import 'all_items_screen.dart';

class MyWishlistScreen extends StatelessWidget {
  const MyWishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final TabControllerX controller = Get.put(TabControllerX());
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;
    final List<String> tabs = ["All items", "Boards"];

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text("My Wishlist", style: AppTextStyles.drawerSubText),
        centerTitle: true,
        backgroundColor: AppColor.fontWhite,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(screenWidth * 0.02),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: Card(
              color: AppColor.fontWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: screenWidth * 0.09,
                width: screenWidth * 0.09,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const Icon(Icons.arrow_back_ios_new, size: 16),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: Obx(
                    () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(tabs.length, (index) {
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
                              tabs[index],
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
                  return Text("Boards");
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
