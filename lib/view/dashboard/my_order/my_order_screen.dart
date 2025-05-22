import 'package:GamStore/view/dashboard/my_order/pending_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/my_orders_controller.dart';
import '../../../utils/appcolor.dart';
import '../../../utils/apptextstyle.dart';
import 'cancelled_order_screen.dart';
import 'delevered_order_screen.dart';

class MyOrdersScreen extends GetView<OrderTabController> {
  const MyOrdersScreen({super.key});
  // final OrderTabController controller = Get.put(OrderTabController());


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(controller.tabs.length, (index) {
              bool isSelected = controller.selectedIndex.value == index;
              return GestureDetector(
                onTap: () => controller.changeTab(index),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color:
                        isSelected
                            ? AppColor.tabBarButtonColor
                            : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    controller.tabs[index],
                    style:
                        isSelected
                            ? AppTextStyles.tabBarText
                            : AppTextStyles.tabBarSecondaryText,
                  ),
                ),
              );
            }),
          ),
        ),

        const SizedBox(height: 20),

        /// Content for selected tab (Optional)
        Obx(() {
          switch (controller.selectedIndex.value) {
            case 0:
              return const PendingOrderScreen();
            case 1:
              return const DeliveredOrderScreen();
            case 2:
              return const CancelledOrderScreen();
            default:
              return const SizedBox();
          }
        }),
      ],
    );
  }
}
