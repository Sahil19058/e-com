import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/appcolor/appcolor.dart';
import '../utils/apptextstyle/apptextstyle.dart';

class ReviewController extends GetxController {
  final int maxLength = 50;
  final TextEditingController textController = TextEditingController();
  var remainingChars = 50.obs;

  var selectedRating = 0.0.obs;

  final ImagePicker picker = ImagePicker();
  Rx<File?> selectedImage = Rx<File?>(null);

  void updateRating(double rating) {
    selectedRating.value = rating;
  }

  @override
  void onInit() {
    super.onInit();
    textController.addListener(() {
      remainingChars.value =
          maxLength - textController.text.length;
    });
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }

  void showThankYouDialog() {
    Get.dialog(
      Dialog(
        elevation: 2,
        backgroundColor: AppColor.fontWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Circle check icon
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.withOpacity(0.1),
                ),
                child: const Icon(Icons.check_circle, color: AppColor.ratingStarColor, size: 54),
              ),
              const SizedBox(height: 20),
              const Text(
                "Thank you for your feedback!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                "We appreciated your feedback.\nWe'll use your feedback to improve your experience.",
                textAlign: TextAlign.center,
                style: AppTextStyles.drawerOtherText,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.back(); // Close dialog
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  child: Text("Done", style: AppTextStyles.tabBarText,),
                ),
              )
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
}
