import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';
import 'package:untitled7/widgets/common_appbar.dart';
import '../../../controller/review_controller.dart';
import '../../../controller/tracking_order_controller.dart';

class TrackOrderScreen extends StatelessWidget {
  final String? trackingNumber = Get.arguments as String?;
  TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TrackingOrderController controller = Get.put(TrackingOrderController());
    final ReviewController reviewController = Get.put(ReviewController());

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: "Track Order", center: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),

            const Row(
              children: [
                Text("Delivered on:", style: AppTextStyles.womenCardText),
                Text("15.02.25", style: AppTextStyles.onBoardingSubTitle),
              ],
            ),

            Row(
              children: [
                const Text("Tracking Number: ", style: AppTextStyles.womenCardText),
                Text(
                  trackingNumber ?? "",
                  style: AppTextStyles.onBoardingSubTitle,
                ),
              ],
            ),

            const SizedBox(height: 30),

            SizedBox(
              height: 300,
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
                                decoration: const BoxDecoration(
                                  color: AppColor.trackOrderColor,
                                  shape: BoxShape.circle,
                                ),
                                child:
                                    index == 0
                                        ? null
                                        :
                                    const Icon(
                                          Icons.check,
                                          size: 10,
                                          color: AppColor.fontWhite,
                                        ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 10),

                          Text(
                            controller.stepperData[index].title,
                            style: AppTextStyles.trackOrderText,
                          ),

                          const Spacer(),

                          Text(
                            controller.stepperData[index].date,
                            style: AppTextStyles.womenCardText,
                          ),
                        ],
                      ),

                      const SizedBox(height: 5),

                      if (index != controller.stepperData.length - 1)
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Column(
                            children: [
                              Container(
                                height: 4,
                                width: 4,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.trackOrderColor,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                height: 4,
                                width: 4,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.trackOrderColor,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                height: 4,
                                width: 4,
                                decoration: const BoxDecoration(
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

            const SizedBox(height: 20),

            Card(
              elevation: 2,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.fontWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 100,
                        width: 70,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 50,
                              left: 30,
                              child: Image(image: Svg(AppImage.handIcon)),
                            ),
                            Positioned(
                              top: 40,
                              left: 15,
                              child: Image(image: Svg(AppImage.yellowStarIcon)),
                            ),
                            Positioned(
                              top: 32,
                              left: 32,
                              child: Image(image: Svg(AppImage.yellowStarIcon)),
                            ),
                            Positioned(
                              top: 40,
                              left: 50,
                              child: Image(image: Svg(AppImage.yellowStarIcon)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t forget to rate",
                            style: AppTextStyles.productNameText.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Rate product to get 5 points for collect.",
                            style: AppTextStyles.trackingOrderText,
                          ),
                          const SizedBox(height: 10),
                          Obx(
                            () => RatingBar(
                              tapOnlyMode: true,
                              glow: false,
                              initialRating:
                                  reviewController.selectedRating.value,
                              direction: Axis.horizontal,
                              minRating: 1,
                              itemCount: 5,
                              itemSize: 23.0,
                              ratingWidget: RatingWidget(
                                full: const Icon(
                                  Icons.star,
                                  color: AppColor.ratingStarColor,
                                ),
                                half: const Icon(
                                  Icons.star_half,
                                  color: AppColor.ratingStarColor,
                                ),
                                empty: const Icon(
                                  Icons.star,
                                  color: AppColor.feedbackStarUnselectColor,
                                ),
                              ),
                              onRatingUpdate: (rating) {
                                reviewController.updateRating(rating);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
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
