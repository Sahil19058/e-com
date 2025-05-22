import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../controller/bottomnav.dart';
import '../../utils/appcolor.dart';

class BottomNavBar extends GetView<BottomNavController> {

  // final BottomNavController controller = Get.put(BottomNavController());

  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: AppColor.fontWhite,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: AppColor.fontBlack.withValues(alpha: 0.05,), // Light shadow
            offset: const Offset(0, -4),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        child: SizedBox(
          height: 90,
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(BottomNavController.menuItems.length, (index) {
                bool isSelected = controller.selectedIndex.value == index;
                return IconButton(
                  icon: SvgPicture.asset(
                    BottomNavController.menuItems[index].icon ?? "",
                    colorFilter: ColorFilter.mode(
                      isSelected ? Colors.black : Colors.grey.shade400,
                      BlendMode.srcIn,
                    ),
                    width: 21,
                    height: 22,
                  ),
                  onPressed: () {
                    controller.changeTabIndex(index);
                  },
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
