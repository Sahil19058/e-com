// lib/controller/onboarding_controller.dart
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/onBoarding_model.dart';
import '../utils/appimage.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentPage = 0.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  final List<OnBoardingModel> onboardingData = [
    OnBoardingModel(
      image: AppImage.onboardingImage1,
      title: "Discover something new",
      description: "Special new arrivals just for you",
    ),
    OnBoardingModel(
      image: AppImage.onboardingImage2,
      title: "Update trendy outfit",
      description: "Favorite brands and hottest trends",
    ),
    OnBoardingModel(
      image: AppImage.onboardingImage3,
      title: "Explore your true style",
      description: "Relax and let us bring the style to you",
    ),
  ];
}
