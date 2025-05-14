import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:untitled7/constant/routes_name.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';
import 'package:untitled7/widgets/common_appbar.dart';
import '../../../model/pending_order_model.dart';

class PendingOrderDetailScreen extends StatelessWidget {
  final PendingOrderModel order = Get.arguments;
  PendingOrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: "Order #${order.orderId}", center: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              height: 102,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.orderDetailCardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        const Text(
                          "Your order is on the way",
                          style: AppTextStyles.subtitle,
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            print("Tracking Number: ${order.trackingNumber}");
                            Get.toNamed(RouteName.trackOrderScreen,arguments: order.trackingNumber);
                          },
                          child: const Text(
                            "Click here to track your order",
                            style: AppTextStyles.orderDetailText,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const Spacer(),
                    const Image(image: Svg(AppImage.truckIcon)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 2,
              color: AppColor.fontWhite,
              child: SizedBox(
                height: 114,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Order number",
                            style: AppTextStyles.womenCardText,
                          ),
                          const Spacer(),
                          Text(
                            "#${order.orderId.toString()}",
                            style: AppTextStyles.productNameText.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            "Tracking Number",
                            style: AppTextStyles.womenCardText,
                          ),
                          const Spacer(),
                          Text(
                            order.trackingNumber.toString(),
                            style: AppTextStyles.productNameText.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            "Delivery Address",
                            style: AppTextStyles.womenCardText,
                          ),
                          const Spacer(),
                          Text(
                            "Not Proper mansion",
                            style: AppTextStyles.productNameText.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 2,
              color: AppColor.fontWhite,
              child: SizedBox(
                height: 247,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Maxi Dress",
                            style: AppTextStyles.onBoardingSubTitle,
                          ),
                          const Spacer(flex: 2),
                          Text("x${order.quantity.toString()}"),
                          const Spacer(),
                          Text(
                            order.subTotal.toDouble().toString(),
                            style: AppTextStyles.drawerSubText,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Text("None", style: AppTextStyles.onBoardingSubTitle),
                          Spacer(flex: 2),
                          Text("x -"),
                          Spacer(),
                          Text("-", style: AppTextStyles.drawerSubText),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          const Text(
                            "Sub Total",
                            style: AppTextStyles.onBoardingSubTitle,
                          ),
                          const Spacer(flex: 2),
                          const Spacer(),
                          Text(
                            order.subTotal.toDouble().toString(),
                            style: AppTextStyles.drawerText,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Text(
                            "Shipping",
                            style: AppTextStyles.onBoardingSubTitle,
                          ),
                          Spacer(flex: 2),
                          Spacer(),
                          Text("0.0", style: AppTextStyles.drawerText),
                        ],
                      ),
                      const Divider(color: AppColor.divedertColor),
                      Row(
                        children: [
                          const Text(
                            "Total",
                            style: AppTextStyles.onBoardingSubTitle,
                          ),
                          const Spacer(flex: 2),
                          const Spacer(),
                          Text( 
                            "\$${order.subTotal.toDouble().toString()}",
                            style: AppTextStyles.drawerText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () {
                  Get.offAllNamed(RouteName.homeScreen);
                  // reviewController.showThankYouDialog();
                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColor.tabBarButtonColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      "Continue shopping",
                      style: AppTextStyles.subtitle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
