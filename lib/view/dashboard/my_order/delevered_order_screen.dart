import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled7/constant/routes_name.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';
import '../../../controller/delevered_order_controller.dart';
import 'package:intl/intl.dart';

class DeliveredOrderScreen extends StatelessWidget {
  const DeliveredOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final DeliveredOrderController controller = Get.put(DeliveredOrderController());

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
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Order #${controller.pendingOrders[index].orderId}",
                            style: AppTextStyles.productDetailText,
                          ),
                          Spacer(),
                          Text(
                            DateFormat('dd/mm/yyyy').format(DateTime.now()),
                            style: AppTextStyles.drawerOtherText,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
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
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Quantity: ",
                            style: AppTextStyles.drawerOtherText,
                          ),
                          Text(
                            controller.pendingOrders[index].quantity.toString(),
                            style: AppTextStyles.tabBarSecondaryText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Subtotal: ",
                            style: AppTextStyles.drawerOtherText,
                          ),
                          Text(
                            "\$${controller.pendingOrders[index].subTotal}",
                            style: AppTextStyles.tabBarSecondaryText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "DELIVERED",
                            style: AppTextStyles.deliveredText,
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              Get.toNamed(RouteName.orderDetailScreen, arguments: controller.pendingOrders[index],);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 9),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.secondaryTextColor
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Text("Detail"),
                            ),
                          )
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

