import 'dart:io';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';
import '../../../controller/review_controller.dart';
import '../../../utils/apptextstyle/apptextstyle.dart';
import '../../../widgets/common_appbar.dart';

class RateThisAppScreen extends StatelessWidget {
  const RateThisAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ReviewController reviewController = Get.put(ReviewController());

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: "Share Your Feedback",center: true),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                "What is your opinion of GemStore?",
                style: AppTextStyles.tabBarSecondaryText,
              ),
            ),

            SizedBox(height: 20),

            Obx(
              () => RatingBar(
                initialRating: reviewController.selectedRating.value,
                direction: Axis.horizontal,
                minRating: 1,
                itemCount: 5,
                itemSize: 45.0,
                ratingWidget: RatingWidget(
                  full: Icon(Icons.star, color: AppColor.fontBlack),
                  half: Icon(Icons.star_half, color: AppColor.ratingStarColor),
                  empty: Icon(
                    Icons.star,
                    color: AppColor.feedbackStarUnselectColor,
                  ),
                ),
                onRatingUpdate: (rating) {
                  reviewController.updateRating(rating);
                },
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                color: AppColor.fontWhite,
                child: Container(
                  height: 267,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        cursorColor: AppColor.fontBlack,
                        controller: reviewController.textController,
                        maxLines: 8,
                        maxLength: reviewController.maxLength,
                        decoration: InputDecoration(
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
                              ? Text("50 Characters") // Hide when empty
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

            SizedBox(height: 40),

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
                      child: Obx(() => Center(
                        child:
                        reviewController.selectedImage.value == null
                            ? Image(image: Svg(AppImage.reviewGalleryIcon))
                            : ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            reviewController.selectedImage.value!,
                            fit: BoxFit.cover,
                            width: 64,
                            height: 64,
                          ),
                        ),
                      ),),
                    ),
                  ),

                  SizedBox(width: 20),

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
                      child: Obx(() => Center(
                        child:
                        reviewController.selectedImage.value == null
                            ? Image(image: Svg(AppImage.reviewCameraIcon))
                            : ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            reviewController.selectedImage.value!,
                            fit: BoxFit.cover,
                            width: 64,
                            height: 64,
                          ),
                        ),
                      ),)
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap:() {
                  reviewController.showThankYouDialog();
                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColor.tabBarButtonColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text("Send feedback", style: AppTextStyles.subtitle),
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
