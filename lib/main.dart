import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constant/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  SystemChrome.setApplicationSwitcherDescription(
    const ApplicationSwitcherDescription(
      label: 'GemStore',
      primaryColor: 0xFF000000, // Optional: status bar color in recents
    ),
  );

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "PTSans",
          useMaterial3: true,
        ),
        getPages: AppRoutes.appRoutes(),
      ),
    ),
  );
}

