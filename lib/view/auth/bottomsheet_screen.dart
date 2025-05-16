import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../utils/appcolor.dart';
import '../../utils/appimage.dart';
import '../../utils/apptextstyle.dart';
import '../../widgets/common_button.dart';

class ShowBottomSheet {
  get context => null;

  showBottomSheet() {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Card(
          child: SizedBox(
            height: 373,
            width: Get.width,
            child: Column(
              children: [
                Card(
                  color: AppColor.circleColor,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: Svg(AppImage.bottomSheetIcon),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Your password has been changed",
                  style: AppTextStyles.onBoardingTitle,
                ),
                const SizedBox(height: 20),
                const Text("Welcome back! Discover now!"),
                const SizedBox(height: 20),
                CommonOutlineButton(
                  text: "Browse home",
                  onTap: () {},
                  backgroundColor: AppColor.fontBlack,
                  textColor: AppColor.fontWhite,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
