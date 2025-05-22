import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/routes_name.dart';
import '../../controller/signup_controller.dart';
import '../../utils/appcolor.dart';
import '../../utils/apptextstyle.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/loginwith_icon.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

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
                  "Create",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "your account",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 32),

                CommonTextField(
                  controller: controller.nameController,
                  hintText: 'Enter your name',
                  validator: controller.validateName,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 10),

                CommonTextField(
                  controller: controller.emailController,
                  hintText: 'Email address',
                  validator: controller.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 16),

                CommonTextField(
                  controller: controller.passwordController,
                  hintText: 'Password',
                  validator: controller.validatePassword,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 16),

                CommonTextField(
                  controller: controller.confirmPasswordController,
                  hintText: 'Confirm Password',
                  validator: controller.validateConfirmPassword,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 24),

                Center(
                  child: CommonOutlineButton(
                    text: "SIGN UP",
                    backgroundColor: AppColor.primaryButtonColor,
                    // width: 147,
                    // height: 51,
                    textColor: AppColor.fontWhite,
                    onTap: () {
                      if (controller.submitForm(context)) {
                        Get.offAllNamed(RouteName.homeScreen);
                      }
                    },
                  ),
                ),

                const SizedBox(height: 26),

                const Center(
                  child: Text(
                    "or sign up with",
                    style: AppTextStyles.onBoardingSubTitle,
                  ),
                ),

                const SizedBox(height: 26),

                const LoginWithIcon(id: 1),

                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have account?",
                      style: AppTextStyles.textButton,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offNamed(RouteName.loginScreen);
                      },
                      child: const Text(
                        "Login",
                        style: AppTextStyles.textButton,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
