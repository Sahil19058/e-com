import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled7/constant/routes_name.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';
import '../../controller/onboarding_controller.dart';
import '../../utils/apptextstyle/apptextstyle.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final OnboardingController controller = Get.put(OnboardingController());

  final List<Map<String, String>> onboardingData = [
    {
      "image": AppImage.onboardingImage1,
      "title": "Discover something new",
      "description": "Special new arrivals just for you",
    },
    {
      "image": AppImage.onboardingImage2,
      "title": "Update trendy outfit",
      "description": "Favorite brands and hottest trends",
    },
    {
      "image": AppImage.onboardingImage3,
      "title": "Explore your true style",
      "description": "Relax and let us bring the style to you",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Bottom Card
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: AppColor.secondaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),

                  /// Page indicator
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingData.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color:
                                controller.currentPage.value == index
                                    ? Colors.white
                                    : null,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColor.fontWhite),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),

          /// PageView content
          PageView.builder(
            controller: controller.pageController,
            itemCount: onboardingData.length,
            onPageChanged: controller.onPageChanged,
            itemBuilder: (context, index) {
              final item = onboardingData[index];
              return Column(
                children: [
                  const SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      item['title'] ?? '',
                      style: AppTextStyles.onBoardingTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      item['description'] ?? '',
                      style: AppTextStyles.onBoardingSubTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      color: AppColor.cardColor,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(item['image'] ?? ''),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),

          Positioned(
            bottom: 75,
            left: MediaQuery.of(context).size.width / 4.5,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(RouteName.signupScreen);
              },
              child: Container(
                height: 53,
                width: 210,
                decoration: BoxDecoration(
                  color: AppColor.fontWhite.withValues(alpha: 0.4),
                  border: Border.all(color: AppColor.fontWhite, width: 1.18),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text("Shopping now", style: AppTextStyles.subtitle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
