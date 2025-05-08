import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_credit_card/u_credit_card.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';
import '../../../utils/apptextstyle/apptextstyle.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({super.key});

  final List<String> paymentMethod = [
    AppImage.payPalImage,
    AppImage.visaImage,
    AppImage.masterCardImage,
    AppImage.aliPayImage,
    AppImage.amexImage,
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text("Payment", style: AppTextStyles.drawerSubText),
        centerTitle: true,
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
                height: screenWidth * 0.09,
                width: screenWidth * 0.09,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const Icon(Icons.arrow_back_ios_new, size: 16),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Card Management", style: AppTextStyles.productDetailText),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    // Add new card logic
                  },
                  child: Text(
                    "Add new+",
                    style: AppTextStyles.addNewText.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.05),

            Center(
              child: CreditCardUi(
                width: screenWidth * 0.9,
                cardHolderFullName: 'John Doe',
                cardNumber: '1234567812345678',
                validFrom: '01/23',
                validThru: '01/28',
                topLeftColor: Colors.blueAccent,
                doesSupportNfc: true,
                placeNfcIconAtTheEnd: true,
                cardType: CardType.debit,
                cardProviderLogo: FlutterLogo(),
                cardProviderLogoPosition: CardProviderLogoPosition.right,
                showBalance: true,
                balance: 128.32434343,
                autoHideBalance: true,
                enableFlipping: true,
                cvvNumber: '123',
              ),
            ),

            SizedBox(height: screenWidth * 0.1),

            Text("Or check out with", style: AppTextStyles.productNameText),

            SizedBox(height: screenWidth * 0.1),

            Center(
              child: SizedBox(
                height: screenWidth * 0.09,
                child: ListView.builder(
                  itemCount: paymentMethod.length,
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.075),
                      width: screenWidth * 0.12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppColor.feedbackStarUnselectColor,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          paymentMethod[index],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
