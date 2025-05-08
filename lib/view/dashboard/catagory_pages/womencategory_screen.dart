import 'package:flutter/material.dart';
import 'package:untitled7/model/product_model.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';

class WomenCateGoryScreen extends StatelessWidget {
  WomenCateGoryScreen({super.key});

  final List<ProductModel> products = [
    ProductModel(AppImage.productImage, "Long Sleeve Dress", "\$45.00", "", [Colors.red, Colors.blue, Colors.green], ["S", "M", "L", "XL"]),
    ProductModel(AppImage.productImage, "Long Sleeve Dress", "\$45.00", "", [Colors.red, Colors.blue, Colors.green], ["S", "M", "L", "XL"]),
    ProductModel(AppImage.productImage, "Long Sleeve Dress", "\$45.00", "", [Colors.red, Colors.blue, Colors.green], ["S", "M", "L", "XL"]),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          // Header Banner
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: screenWidth * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(AppImage.headerImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Autumn", style: AppTextStyles.title),
                      Text("Collection", style: AppTextStyles.title),
                      Text("2022", style: AppTextStyles.title),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          // Featured Products
          sectionHeader("Feature Products", onTap: () {}),
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return productCard(products[index]);
              },
            ),
          ),

          SizedBox(height: 20),

          // Middle Promotional Banner
          promoBanner(AppImage.decorationImage, "| NEW COLLECTION", "HANG OUT", "& PARTY"),

          SizedBox(height: 20),

          // Recommended
          sectionHeader("Recommended", onTap: () {}),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return recommendedCard(products[index]);
              },
            ),
          ),

          SizedBox(height: 20),

          // Top Collection
          sectionHeader("Top Collection", onTap: () {}),
          promoBanner(AppImage.modelImage, "| Sale up to 40%", "FOR SLIM", "& BEAUTY"),

          SizedBox(height: 20),

          // Full-Width Promo
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                color: AppColor.womenCardtColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Summer Collection 2021", style: AppTextStyles.womenCardText),
                          SizedBox(height: 20),
                          Text("Most sexy ", style: AppTextStyles.onBoardingTitle),
                          Text("& fabulous", style: AppTextStyles.onBoardingTitle),
                          Text("design", style: AppTextStyles.onBoardingTitle),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImage.model1Image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget sectionHeader(String title, {required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppTextStyles.onBoardingTitle),
          TextButton(onPressed: onTap, child: Text("Show all", style: AppTextStyles.textButtonText)),
        ],
      ),
    );
  }

  Widget productCard(ProductModel product) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 172,
            width: 126,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(product.productImage), fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 6),
          Text(product.productName, style: AppTextStyles.productNameText),
          Text(product.productPrice, style: AppTextStyles.drawerSubText),
        ],
      ),
    );
  }

  Widget recommendedCard(ProductModel product) {
    return Card(
      elevation: 1,
      color: AppColor.fontWhite,
      margin: const EdgeInsets.only(right: 10),
      child: SizedBox(
        width: 213,
        child: Row(
          children: [
            Container(
              height: 66,
              width: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(product.productImage), fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.productName, style: AppTextStyles.productNameText),
                Text(product.productPrice, style: AppTextStyles.drawerSubText),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget promoBanner(String image, String topText, String line1, String line2) {
    return Container(
      height: 157,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColor.womenCardtColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(topText, style: AppTextStyles.womenCardText),
                SizedBox(height: 16),
                Text(line1, style: AppTextStyles.womenCardSubText),
                Text(line2, style: AppTextStyles.womenCardSubText),
              ],
            ),
          ),
          Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.decoration1tColor,
                ),
              ),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.decoration2tColor,
                ),
              ),
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
