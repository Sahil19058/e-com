import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/appcolor/appcolor.dart';
import '../../utils/apptextstyle/apptextstyle.dart';

PreferredSizeWidget commonAppBar({required String title,required bool center}) {
  return AppBar(
    scrolledUnderElevation: 0.0,
    title: Text(title, style: AppTextStyles.productDetailText,),
    centerTitle: center,
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
  );
}
