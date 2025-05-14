import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../constant/routes_name.dart';
import '../../utils/appcolor/appcolor.dart';
import '../../widgets/common_button.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  TextEditingController otpController = TextEditingController();
  // int remainingSeconds = 10;
  // late Timer timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                controller: otpController,
                keyboardType: TextInputType.number,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: 60,
                  fieldWidth: 60,
                  activeColor: Colors.black,
                  selectedColor: Colors.black,
                  inactiveColor: Colors.grey.shade300,
                ),
                animationDuration: const Duration(milliseconds: 300),
                onChanged: (value) {},
              ),
              const SizedBox(height: 12),
              const Text(
                "Resend in 00",

                ///${remainingSeconds.toString().padLeft(2, '0')}
                style: TextStyle(color: AppColor.liteTextColor),
              ),

              const SizedBox(height: 250),

              Center(
                child: CommonOutlineButton(
                  text: "VERIFY CODE",
                  backgroundColor: AppColor.primaryButtonColor,
                  width: 147,
                  height: 51,
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
