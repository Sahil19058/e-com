import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import '../../constant/routes_name.dart';
import '../../controller/auth/signup_controller.dart';
import '../../utils/apptextstyle/apptextstyle.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/loginwith_icon.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignUpController controller = SignUpController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
              children: [
                SizedBox(height: 60),

                Text(
                  "Create",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  "your account",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 32),

                CommonTextField(
                  controller: controller.nameController,
                  hintText: 'Enter your name',
                  validator: controller.validateName,
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 10),

                CommonTextField(
                  controller: controller.emailController,
                  hintText: 'Email address',
                  validator: controller.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 16),

                CommonTextField(
                  controller: controller.passwordController,
                  hintText: 'Password',
                  validator: controller.validatePassword,
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 16),

                CommonTextField(
                  controller: controller.confirmPasswordController,
                  hintText: 'Confirm Password',
                  validator: controller.validateConfirmPassword,
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 24),

                Center(
                  child: CommonOutlineButton(
                    text: "SIGN UP",
                    backgroundColor: AppColor.primaryButtonColor,
                    width: 147,
                    height: 51,
                    textColor: AppColor.fontWhite,
                    onTap: () {
                      if (controller.submitForm(context)) {
                        Get.offAllNamed(RouteName.homeScreen);
                      }
                    },
                  ),
                ),

                SizedBox(height: 26),

                Center(
                  child: Text(
                    "or sign up with",
                    style: AppTextStyles.onBoardingSubTitle,
                  ),
                ),

                SizedBox(height: 26),

                /// sign up with icon ex:- google, facebook, apple
                LoginwithIcon(id: 1),

                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account?",
                      style: AppTextStyles.textButton,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offNamed(RouteName.loginScreen);
                      },
                      child: Text("Login", style: AppTextStyles.textButton),
                    ),
                  ],
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
