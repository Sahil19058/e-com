import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../../controller/address_controller.dart';
import '../../../model/address_model.dart';
import '../../../utils/appcolor/appcolor.dart';
import '../../../utils/appimage/appimage.dart';
import '../../../utils/apptextstyle/apptextstyle.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(AddressController());

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text(" Delivery address", style: AppTextStyles.drawerSubText),
        centerTitle: true,
        backgroundColor: AppColor.fontWhite,
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
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: const Icon(Icons.arrow_back_ios_new, size: 16),
              ),
            ),
          ),
        ),
      ),

      backgroundColor: AppColor.fontWhite,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: controller.addresses.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Card(
                      elevation: 2,
                      color: AppColor.fontWhite,
                      child: Container(

                        height: 110,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Obx(() {
                                  return Radio<int>(
                                    focusColor: AppColor.fontBlack,
                                    activeColor: AppColor.fontBlack,
                                    value: index,
                                    groupValue: controller.selectedAddressIndex.value,
                                    onChanged: (val) {
                                      controller.selectedAddressIndex.value = val!;
                                    },
                                  );
                                }),
                                Image(image: Svg(controller.addresses[index].icons)),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                        "SEND TO",
                                      style: AppTextStyles.womenCardText,
                                    ),
                                    Text(
                                      controller.addresses[index].place,
                                      style: AppTextStyles.textButton.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                TextButton(
                                    onPressed: () {
                                      
                                    },
                                    child: Text(
                                        "Edit",
                                      style: AppTextStyles.editButtonText.copyWith(
                                        decoration: TextDecoration.underline,
                                        decorationColor: AppColor.cancelledTextColor
                                      ),

                                    )
                                )
                              ],
                            ),
                            SizedBox(height: 20,),
                            Text(
                              controller.addresses[index].address,
                              style: AppTextStyles.womenCardText,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}