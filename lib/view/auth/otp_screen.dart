import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../constant/routes_name.dart';
import '../../controller/otp_controller.dart';
import '../../utils/appcolor.dart';
import '../../widgets/common_button.dart';

class VerificationCodeScreen extends GetView<OtpController> {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.fontWhite,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Get.back(),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                "Verification code",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                "Please enter the verification code we sent\nto your email address",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 32),
              PinCodeTextField(
                appContext: context,
                length: 4,
                controller: controller.otpController,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: 60,
                  fieldWidth: 60,
                  activeColor: AppColor.fontBlack,
                  selectedColor: AppColor.fontBlack,
                  inactiveColor: Colors.grey.shade300,
                ),
                animationDuration: const Duration(milliseconds: 300),
                onChanged: (value) {},
              ),
              const SizedBox(height: 12),
              const Text(
                "Resend in 00",
                style: TextStyle(color: AppColor.liteTextColor),
              ),
              const SizedBox(height: 250),
              Center(
                child: CommonOutlineButton(
                  text: "VERIFY CODE",
                  backgroundColor: AppColor.primaryButtonColor,
                  // width: 147,
                  // height: 51,
                  textColor: AppColor.fontWhite,
                  onTap: () {
                    Get.toNamed(RouteName.newPassScreen);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
