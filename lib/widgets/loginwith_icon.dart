import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../constant/routes_name.dart';
import '../services/signinwithgoogle.dart';
import '../services/signupwithgoogle.dart';
import '../utils/appcolor/appcolor.dart';
import '../utils/appimage/appimage.dart';

class LoginWithIcon extends StatelessWidget {
  final int id;
  const LoginWithIcon({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    final GoogleAuthService authService = GoogleAuthService();
    final GoogleAuthService1 authService1 = GoogleAuthService1();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            image: const DecorationImage(image: Svg(AppImage.appleIcon)),
            border: Border.all(color: AppColor.buttonColor, width: 1),
            shape: BoxShape.circle,
          ),
        ),

        const SizedBox(width: 20),

        id == 1
            ? GestureDetector(
              onTap: () async {
                // Attempt to sign in with Google
                User? user = await authService.signInWithGoogle();
                // If sign-in is successful, navigate to the HomeScreen
                if (user != null) {
                  Get.offAllNamed(RouteName.homeScreen);
                }
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  image: const DecorationImage(image: Svg(AppImage.googleIcon)),
                  border: Border.all(color: AppColor.buttonColor, width: 1),
                  shape: BoxShape.circle,
                ),
              ),
            )
            : GestureDetector(
              onTap: () async {
                // Attempt to sign in with Google
                User? user = await authService1.signInWithGoogle();
                // If sign-in is successful, navigate to the HomeScreen
                if (user != null) {
                  Get.toNamed(RouteName.homeScreen);
                }
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  image: const DecorationImage(image: Svg(AppImage.googleIcon)),
                  border: Border.all(color: AppColor.buttonColor, width: 1),
                  shape: BoxShape.circle,
                ),
              ),
            ),

        const SizedBox(width: 20),

        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            image: const DecorationImage(image: Svg(AppImage.facebookIcon)),
            border: Border.all(color: AppColor.buttonColor, width: 1),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
