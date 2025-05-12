import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constant/routes.dart';
import 'view/onboarding/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: true,
      builder:
          (context) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: "PTSans"),
            getPages: AppRoutes.appRoutes(),
          ),
    ),
  );
}
