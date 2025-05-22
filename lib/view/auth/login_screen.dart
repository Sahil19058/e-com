import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/routes_name.dart';
import '../../controller/signup_controller.dart';
import '../../utils/appcolor.dart';
import '../../utils/apptextstyle.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/loginwith_icon.dart';

class LoginScreen extends GetView<SignUpController> {
  const LoginScreen({super.key});

  // final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 60),

                const Text(
                  "Log into",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "your account",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 32),

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

                const SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(RouteName.forgotPassScreen);
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: AppTextStyles.onBoardingSubTitle,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                Center(
                  child: CommonOutlineButton(
                    text: "LOG IN",
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
                    "or log in with",
                    style: AppTextStyles.onBoardingSubTitle,
                  ),
                ),

                const SizedBox(height: 26),

                const LoginWithIcon(id: 2),

                const SizedBox(height: 80),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account?",
                      style: AppTextStyles.textButton,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offNamed(RouteName.signupScreen);
                      },
                      child: const Text("Sign Up", style: AppTextStyles.textButton),
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
