import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/my_wishlist_controller.dart';
import '../../../../utils/appcolor/appcolor.dart';
import '../../../../utils/apptextstyle/apptextstyle.dart';


class MyWishlistScreen extends StatelessWidget {
  const MyWishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TabControllerX controller = Get.put(TabControllerX());
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final List<String> tabs = ["All items","Boards"];

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text("My Wishlist", style: AppTextStyles.drawerSubText),
        centerTitle: true,
        backgroundColor: AppColor.fontWhite,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
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
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Container(
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                border: Border.all(
                  color: Colors.black
                )
              ),
              child: Obx(
                    () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(tabs.length, (index) {
                    bool isSelected = controller.selectedIndex.value == index;
                    return GestureDetector(
                      onTap: () => controller.changeTab(index),
                      child: Container(
                        width: 145,
                        margin: EdgeInsets.symmetric(horizontal: 0),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color:
                          isSelected
                              ? AppColor.fontBlack
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Center(
                          child: Text(
                            tabs[index],
                            style:
                            isSelected
                                ? AppTextStyles.subtitle
                                : AppTextStyles.drawerSubText,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          Obx(() {
            switch (controller.selectedIndex.value) {
              case 0:
                return Text("All item");
              case 1:
                return Text("Boards");
              default:
                return SizedBox();
            }
          }),
        ],
      ),
    );
  }
}
