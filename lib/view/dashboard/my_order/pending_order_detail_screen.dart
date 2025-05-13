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
            SizedBox(height: 30),
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
                        Spacer(),
                        Text(
                          "Your order is on the way",
                          style: AppTextStyles.subtitle,
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            print("Tracking Number: ${order.trackingNumber}");
                            Get.toNamed(RouteName.trackOrderScreen,arguments: order.trackingNumber);
                          },
                          child: Text(
                            "Click here to track your order",
                            style: AppTextStyles.orderDetailText,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    Spacer(),
                    Image(image: Svg(AppImage.truckIcon)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
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
                          Text(
                            "Order number",
                            style: AppTextStyles.womenCardText,
                          ),
                          Spacer(),
                          Text(
                            "#${order.orderId.toString()}",
                            style: AppTextStyles.productNameText.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Tracking Number",
                            style: AppTextStyles.womenCardText,
                          ),
                          Spacer(),
                          Text(
                            order.trackingNumber.toString(),
                            style: AppTextStyles.productNameText.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Delivery Address",
                            style: AppTextStyles.womenCardText,
                          ),
                          Spacer(),
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
            SizedBox(height: 30),
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
                          Text(
                            "Maxi Dress",
                            style: AppTextStyles.onBoardingSubTitle,
                          ),
                          Spacer(flex: 2),
                          Text("x${order.quantity.toString()}"),
                          Spacer(),
                          Text(
                            order.subTotal.toDouble().toString(),
                            style: AppTextStyles.drawerSubText,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("None", style: AppTextStyles.onBoardingSubTitle),
                          Spacer(flex: 2),
                          Text("x -"),
                          Spacer(),
                          Text("-", style: AppTextStyles.drawerSubText),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Text(
                            "Sub Total",
                            style: AppTextStyles.onBoardingSubTitle,
                          ),
                          Spacer(flex: 2),
                          Spacer(),
                          Text(
                            order.subTotal.toDouble().toString(),
                            style: AppTextStyles.drawerText,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
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
                      Divider(color: AppColor.divedertColor),
                      Row(
                        children: [
                          Text(
                            "Total",
                            style: AppTextStyles.onBoardingSubTitle,
                          ),
                          Spacer(flex: 2),
                          Spacer(),
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
            SizedBox(height: 20),
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
                  child: Center(
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
