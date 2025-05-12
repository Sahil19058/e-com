import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';
import 'package:untitled7/widgets/common_appbar.dart';
import '../../../controller/tracking_order_controller.dart';
import '../../../model/pending_order_model.dart';
import '../../../model/stepperdara_model.dart';

class TrackOrderScreen extends StatelessWidget {
  final String? trackingNumber = Get.arguments as String?;
   TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TrackingOrderController controller = Get.put(TrackingOrderController());
    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: "Track Order", center: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text("Delivered on:"),
                Text("15.02.25")
              ],
            ),
            Row(
              children: [
                Text("Tracking Number: "),
                Text(trackingNumber ?? "")
              ],
            ),
            SizedBox(height: 30),
            Flexible(
              child: ListView.builder(
                itemCount: controller.stepperData.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColor.trackOrderColor,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: 13,
                                width: 13,
                                decoration: BoxDecoration(
                                  color: AppColor.trackOrderColor,
                                  shape: BoxShape.circle,
                                ),
                                child:
                                    index == 0
                                        ? null
                                        : Icon(
                                          Icons.check,
                                          size: 10,
                                          color: AppColor.fontWhite,
                                        ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            controller.stepperData[index].title,
                            style: AppTextStyles.trackOrderText,
                          ),
                          Spacer(),
                          Text(
                            controller.stepperData[index].date,
                            style: AppTextStyles.womenCardText,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      if (index != controller.stepperData.length - 1)
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Column(
                            children: [
                              Container(
                                height: 4,
                                width: 4,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.trackOrderColor,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                height: 4,
                                width: 4,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.trackOrderColor,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                height: 4,
                                width: 4,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.trackOrderColor,
                                ),
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
