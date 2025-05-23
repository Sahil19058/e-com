import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../controller/signup_controller.dart';
import '../../utils/appcolor.dart';
import '../../utils/appimage.dart';
import '../../utils/apptextstyle.dart';
import '../../widgets/common_button.dart';
import '../../constant/routes_name.dart';

class NewPassScreen extends GetView<SignUpController> {
  const NewPassScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                const Text(
                  "Create new password",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Your new password must be different from previously used password",
                  style: TextStyle(fontSize: 14, color: AppColor.buttonColor),
                ),
                const SizedBox(height: 32),

                // New Password Field
                Obx(() => TextFormField(
                  obscureText: controller.obscureNewPassword.value,
                  onChanged: (value) {
                    controller.newPassword.value = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'New password',
                    suffixIcon: controller.newPassword.value.isNotEmpty
                        ? IconButton(
                      icon: Icon(
                        controller.obscureNewPassword.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        controller.obscureNewPassword.value =
                        !controller.obscureNewPassword.value;
                      },
                    )
                        : null,
                  ),
                )),

                const SizedBox(height: 16),

                // Confirm Password Field
                Obx(() => TextFormField(
                  obscureText: controller.obscureConfirmPassword.value,
                  onChanged: (value) {
                    controller.confirmPassword.value = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    suffixIcon:
                    controller.confirmPassword.value.isNotEmpty
                        ? IconButton(
                      icon: Icon(
                        controller.obscureConfirmPassword.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        controller.obscureConfirmPassword.value =
                        !controller.obscureConfirmPassword.value;
                      },
                    )
                        : null,
                  ),
                )),

                const SizedBox(height: 180),

                Obx(() => CommonOutlineButton(
                  text: "Confirm",
                  backgroundColor: controller.isButtonEnabled
                      ? AppColor.fontBlack
                      : AppColor.buttonColor.withValues(alpha: 0.4),
                  textColor: AppColor.fontWhite,
                  onTap: controller.isButtonEnabled
                      ? () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 373,
                          width: Get.width,
                          child: Column(
                            children: [
                              Card(
                                color: AppColor.circleColor,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(100),
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
                              const Text(
                                  "Welcome back! Discover now!"),
                              const SizedBox(height: 20),
                              CommonOutlineButton(
                                text: "Browse home",
                                onTap: () {
                                  Get.offAllNamed(RouteName.homeScreen);
                                },
                                backgroundColor: AppColor.fontBlack,
                                textColor: AppColor.fontWhite,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } : null,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
