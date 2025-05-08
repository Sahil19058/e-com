import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import '../../constant/routes_name.dart';
import '../../controller/auth/signup_controller.dart';
import '../../utils/apptextstyle/apptextstyle.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/loginwith_icon.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  "Log into",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  "your account",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 32),

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

                SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(RouteName.forgotPassScreen);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: AppTextStyles.onBoardingSubTitle,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25),

                Center(
                  child: CommonOutlineButton(
                    text: "LOG IN",
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
                    "or log in with",
                    style: AppTextStyles.onBoardingSubTitle,
                  ),
                ),

                SizedBox(height: 26),

                /// Login with icon ex:- google, facebook, apple
                LoginwithIcon(id: 2),

                SizedBox(height: 80),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: AppTextStyles.textButton,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offNamed(RouteName.signupScreen);
                      },
                      child: Text("Sign Up", style: AppTextStyles.textButton),
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
