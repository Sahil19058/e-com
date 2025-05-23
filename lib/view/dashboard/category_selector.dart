 import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../controller/catagoty_controller.dart';
import '../../utils/appcolor.dart';
import 'catagory_pages/womencategory_screen.dart';

class CategorySelector extends GetView<CategoryController> {
   const CategorySelector({super.key});

  // final CategoryController controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = screenWidth * 0.12; // dynamically scale icon size

    return Column(
      children: [
        SizedBox(
          height: iconSize * 2,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            itemCount: controller.categories.length,
            separatorBuilder: (_, __) => SizedBox(width: screenWidth * 0.08),
            itemBuilder: (context, index) {
              return Obx(() {
                /// Check if the current index is selected
                bool isSelected = controller.selectedIndex.value == index;

                /// Handle tap event
                return GestureDetector(
                  onTap: () => controller.selectCategory(index),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: iconSize,
                        width: iconSize,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColor.categoryButtonColor
                              : AppColor.backGroundColor,
                          shape: BoxShape.circle,
                          border: isSelected
                              ? Border.all(
                            color: AppColor.categoryButtonColor,
                            width: 2,
                          )
                              : null,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(iconSize * 0.2),
                          child: Image(
                            image: Svg(controller.categories[index].icon),
                            color: isSelected ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        controller.categories[index].label,
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: isSelected ? Colors.black : Colors.grey,
                          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                );
              });
            },
          ),
        ),

        const SizedBox(height: 16),

        /// Responsive category content
        Expanded(
          child: Obx(() {
            switch (controller.selectedIndex.value) {
              case 0:
                return const WomenCateGoryScreen();
              case 1:
                return const Center(child: Text("Men", style: TextStyle(fontSize: 18)));
              case 2:
                return const Center(child: Text("Accessories", style: TextStyle(fontSize: 18)));
              case 3:
                return const Center(child: Text("Beauty", style: TextStyle(fontSize: 18)));
              default:
                return const SizedBox();
            }
          }),
        ),
      ],
    );
  }
}
