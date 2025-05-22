import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/routes_name.dart';
import '../../../controller/delevered_order_controller.dart';
import 'package:intl/intl.dart';

import '../../../utils/appcolor.dart';
import '../../../utils/apptextstyle.dart';

class DeliveredOrderScreen extends GetView<DeliveredOrderController> {
  const DeliveredOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final DeliveredOrderController controller = Get.put(
    //   DeliveredOrderController(),
    // );

    return Expanded(
      child: ListView.builder(
        itemCount: controller.pendingOrders.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: AppColor.fontWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 182,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.fontWhite,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Order #${controller.pendingOrders[index].orderId}",
                            style: AppTextStyles.productDetailText,
                          ),
                          const Spacer(),
                          Text(
                            DateFormat('dd/mm/yyyy').format(DateTime.now()),
                            style: AppTextStyles.drawerOtherText,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            "Tracking number: ",
                            style: AppTextStyles.drawerOtherText,
                          ),
                          Text(
                            controller.pendingOrders[index].trackingNumber,
                            style: AppTextStyles.tabBarSecondaryText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            "Quantity: ",
                            style: AppTextStyles.drawerOtherText,
                          ),
                          Text(
                            controller.pendingOrders[index].quantity.toString(),
                            style: AppTextStyles.tabBarSecondaryText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "Subtotal: ",
                            style: AppTextStyles.drawerOtherText,
                          ),
                          Text(
                            "\$${controller.pendingOrders[index].subTotal}",
                            style: AppTextStyles.tabBarSecondaryText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            "DELIVERED",
                            style: AppTextStyles.deliveredText,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                RouteName.orderDetailScreen,
                                arguments: controller.pendingOrders[index],
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 9,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColor.secondaryTextColor,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text("Detail"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
