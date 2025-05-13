import 'package:flutter/material.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';
import 'package:get/get.dart';

import '../../constant/routes_name.dart';
import '../../utils/apptextstyle/apptextstyle.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImage.splashImage),
            colorFilter: ColorFilter.mode(
              Colors.black.withValues(alpha: 0.3),
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.60),

            Text("Welcome to GemStore!", style: AppTextStyles.title),

            SizedBox(height: 13),

            Text(
              "The home for a fashionista",
              style: AppTextStyles.subtitle,
            ),

            SizedBox(height: 53),

            GestureDetector(
              onTap: () {
                Get.offNamed(RouteName.onboardingScreen);
              },
              child: Container(
                height: 53,
                width: 193,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColor.fontWhite.withValues(alpha: 0.5),
                  border: Border.all(
                    color: AppColor.fontWhite,
                    width: 1.18,
                  ),
                ),
                child: Center(
                  child: Text("Get Started", style: AppTextStyles.subtitle),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
