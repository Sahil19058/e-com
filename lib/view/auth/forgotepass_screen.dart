import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/routes_name.dart';
import '../../controller/signup_controller.dart';
import '../../utils/appcolor.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_textfield.dart';

class ForgotPassScreen extends GetView<SignUpController> {
   const ForgotPassScreen({super.key});

  @override

  // final SignUpController controller = SignUpController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Get.back(), // or Navigator.pop(context)
            child: Card(
              color: AppColor.fontWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 36,
                width: 36,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const Icon(Icons.arrow_back_ios_new, size: 16),
              ),
            ),
          ),
        ),
      ),
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
                  "Forgot password?",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Enter email associated with your account and we’ll send and email with intructions to reset your password",
                  style: TextStyle(fontSize: 14, color: AppColor.buttonColor),
                ),

                const SizedBox(height: 32),

                CommonTextField(
                  controller: controller.emailController,
                  hintText: 'Email address',
                  validator: controller.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 250),

                Center(
                  child: CommonOutlineButton(
                    text: "SEND CODE",
                    backgroundColor: AppColor.primaryButtonColor,
                    // width: 147,
                    // height: 51,
                    textColor: AppColor.fontWhite,
                    onTap: () {
                      if (!controller.formKey.currentState!.validate()) {
                        Get.toNamed(RouteName.otpScreen);
                      }
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
