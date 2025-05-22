import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../../controller/address_controller.dart';
import '../../../utils/appcolor.dart';
import '../../../utils/apptextstyle.dart';
import '../../../widgets/common_appbar.dart';

class AddressScreen extends GetView<AddressController> {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // final controller = Get.put(AddressController());

    return Scaffold(
      appBar: commonAppBar(title: "Delivery Address", center: true),

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
                      child: SizedBox(

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
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    const Text(
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
                                const Spacer(),
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
                            const SizedBox(height: 20,),
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