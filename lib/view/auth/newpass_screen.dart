import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../controller/signup_controller.dart';
import '../../utils/appcolor.dart';
import '../../utils/appimage.dart';
import '../../utils/apptextstyle.dart';
import '../../widgets/common_button.dart';
import '../../constant/routes_name.dart';

class NewPassScreen extends StatefulWidget {
  const NewPassScreen({super.key});

  @override
  State<NewPassScreen> createState() => _NewPassScreenState();
}

class _NewPassScreenState extends State<NewPassScreen> {

  final SignUpController controller = SignUpController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void updateState() {
    setState(() {}); // triggers rebuild
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      // ... AppBar code unchanged ...
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
                TextFormField(
                  obscureText: controller.obscureNewPassword,
                  onChanged: (value) {
                    controller.newPassword = value;
                    updateState();
                  },
                  decoration: InputDecoration(
                    hintText: 'New password',
                    suffixIcon:
                        controller.newPassword.isNotEmpty
                            ? IconButton(
                              icon: Icon(
                                controller.obscureNewPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  controller.obscureNewPassword =
                                      !controller.obscureNewPassword;
                                });
                              },
                            )
                            : null,
                  ),
                ),

                const SizedBox(height: 16),

                // Confirm Password Field
                TextFormField(
                  obscureText: controller.obscureConfirmPassword,
                  onChanged: (value) {
                    controller.confirmPassword = value;
                    updateState();
                  },
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    suffixIcon:
                        controller.confirmPassword.isNotEmpty
                            ? IconButton(
                              icon: Icon(
                                controller.obscureConfirmPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  controller.obscureConfirmPassword =
                                      !controller.obscureConfirmPassword;
                                });
                              },
                            )
                            : null,
                  ),
                ),

                const SizedBox(height: 180),

                Center(
                  child: CommonOutlineButton(
                    text: "Confirm",
                    backgroundColor:
                        controller.isButtonEnabled
                            ? AppColor.fontBlack
                            : AppColor.buttonColor.withValues(alpha: 0.4),
                    textColor: AppColor.fontWhite,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Card(
                            elevation: 2,
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
                                    onTap: () {
                                      Get.offAllNamed(RouteName.homeScreen);
                                    },
                                    backgroundColor: AppColor.fontBlack,
                                    textColor: AppColor.fontWhite,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
