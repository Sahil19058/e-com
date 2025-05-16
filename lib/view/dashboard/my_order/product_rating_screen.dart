import 'dart:io';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../controller/review_controller.dart';
import '../../../utils/appcolor.dart';
import '../../../utils/appimage.dart';
import '../../../utils/apptextstyle.dart';
import '../../../widgets/common_appbar.dart';

class ProductRatingScreen extends StatelessWidget {
  const ProductRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ReviewController reviewController = Get.put(ReviewController());

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: "Rate product", center: true),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 66,
                decoration: BoxDecoration(
                  color: AppColor.orderDetailCardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image(image: Svg(AppImage.giftIcon)),

                      SizedBox(width: 10),

                      Text(
                        "Submit your review to get 5 points",
                        style: AppTextStyles.reviewProductBannerText,
                      ),

                      Spacer(),

                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppColor.fontWhite,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Obx(
              () => RatingBar(
                glow: false,
                tapOnlyMode: true,
                initialRating: reviewController.selectedRating.value,
                direction: Axis.horizontal,
                minRating: 1,
                itemCount: 5,
                itemSize: 45.0,
                ratingWidget: RatingWidget(
                  full: const Icon(Icons.star, color: AppColor.ratingStarColor),
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

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                color: AppColor.fontWhite,
                child: SizedBox(
                  height: 267,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        cursorColor: AppColor.fontBlack,
                        controller: reviewController.textController,
                        maxLines: 8,
                        maxLength: reviewController.maxLength,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          // filled: true,fillColor: AppColor.fontWhite,
                          hintText:
                              "Would you like to write anything about this product? ",
                          counterText: '',
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Obx(() {
                          final remaining =
                              reviewController.remainingChars.value;
                          return remaining == reviewController.maxLength
                              ? const Text("50 Characters") // Hide when empty
                              : Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text("$remaining Characters"),
                              );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () async {
                      final XFile? image = await reviewController.picker
                          .pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        reviewController.selectedImage.value = File(image.path);
                      }
                    },
                    child: Container(
                      height: 64,
                      width: 69,
                      decoration: DottedDecoration(
                        borderRadius: BorderRadius.circular(20),
                        shape: Shape.box,
                        color: AppColor.feedbackStarUnselectColor,
                      ),
                      child: Obx(
                        () => Center(
                          child:
                              reviewController.selectedImage.value == null
                                  ? const Image(
                                    image: Svg(AppImage.reviewGalleryIcon),
                                  )
                                  : ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.file(
                                      reviewController.selectedImage.value!,
                                      fit: BoxFit.cover,
                                      width: 64,
                                      height: 64,
                                    ),
                                  ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  GestureDetector(
                    onTap: () async {
                      final XFile? image = await reviewController.picker
                          .pickImage(source: ImageSource.camera);
                      if (image != null) {
                        reviewController.selectedImage.value = File(image.path);
                      }
                    },
                    child: Container(
                      height: 64,
                      width: 69,
                      decoration: DottedDecoration(
                        borderRadius: BorderRadius.circular(20),
                        shape: Shape.box,
                        color: AppColor.feedbackStarUnselectColor,
                      ),
                      child: Obx(
                        () => Center(
                          child:
                              reviewController.selectedImage.value == null
                                  ? const Image(
                                    image: Svg(AppImage.reviewCameraIcon),
                                  )
                                  : ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.file(
                                      reviewController.selectedImage.value!,
                                      fit: BoxFit.cover,
                                      width: 64,
                                      height: 64,
                                    ),
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(

                onTap: () {
                  reviewController.showThankYouDialog();
                },

                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColor.tabBarButtonColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text("Submit Review", style: AppTextStyles.subtitle),
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
