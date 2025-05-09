import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';
import '../../constant/routes_name.dart';
import '../../model/all_product_model.dart';
import '../../utils/appimage/appimage.dart';

class DressesScreen extends StatelessWidget {
  const DressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<AllProductModel> allProducts = [
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 52.00",
        "\$ 90.00",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        5,
        36
      ),
      AllProductModel(
        AppImage.product2Image,
        "Linen Dress",
        "\$ 68.00",
        "\$ 90.00",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        4,
        97
      ),
      AllProductModel(
        AppImage.product2Image,
        "Linen Dress",
        "\$ 65.00",
        "",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        3,
        92
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 34.00",
        "\$ 90.00",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        3,
        89
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 100.00",
        "",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        4,
        48
      ),
      AllProductModel(
        AppImage.product2Image,
        "Linen Dress",
        "\$ 52.00",
        "\$ 90.00",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        5,
        86
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 52.00",
        "",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        2,
        50
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 96.00",
        "",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        4,
        49
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 75.00",
        "\$ 90.00",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        4,
        32
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 63.00",
        "",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        4,
        87
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 55.00",
        "",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        5,
        65
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 52.00",
        "",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        4,
        63
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 42.00",
        "",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        4,
        73
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 28.00",
        "\$ 90.00",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        4,
        20
      ),
      AllProductModel(
        AppImage.product1Image,
        "Linen Dress",
        "\$ 64.00",
        "\$ 90.00",
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
        [
          AppColor.productColor1,
          AppColor.productColor2,
          AppColor.productColor3,
        ],
        ["M", "S", "L"],
        5,
        15
      ),
    ];

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text("Dresses", style: AppTextStyles.drawerSubText),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Found \n ${allProducts.length} Results",
                  style: AppTextStyles.onBoardingTitle,
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 97,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.buttonOutlineColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text("Filter"),
                        Spacer(),
                        Image(image: Svg(AppImage.downArrowIcon)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: allProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteName.productDetailScreen,arguments: allProducts[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image(image : AssetImage(allProducts[index].productImage), ),
                              // Image(image: AssetImage(AppImage.product1Image)),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  height: 27,
                                  width: 27,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.fontWhite,
                                  ),
                                  child: Obx(() {
                                    final isFav = allProducts[index].isFavorite.value;
                                    return GestureDetector(
                                      onTap: () {
                                        allProducts[index].isFavorite.toggle();
                                        if (allProducts[index].isFavorite.value) {
                                          if (!wishListProduct.contains(allProducts[index])) {
                                            wishListProduct.add(allProducts[index]);
                                          }
                                        } else {
                                          wishListProduct.remove(allProducts[index]);
                                        }
                                      },
                                      child: Image(
                                        image: Svg(AppImage.favoriteIcon),
                                        color: isFav ? AppColor.likeColor : AppColor.notLikeColor,
                                      ),
                                    );
                                  })
                                  ,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            allProducts[index].productName,
                            style: AppTextStyles.productNameText,
                          ),
                          Row(
                            children: [
                              Text(
                                allProducts[index].productPrice,
                                style: AppTextStyles.drawerSubText,
                              ),
                              SizedBox(width: 5),
                              Text(
                                allProducts[index].productRealPrice,
                                style: AppTextStyles.womenCardText.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: AppColor.secondaryTextColor,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              RatingBar(
                                ignoreGestures: true, // Makes it read-only
                                initialRating: allProducts[index].productRating.toDouble(),
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 15.0,
                                ratingWidget: RatingWidget(
                                  full: Icon(Icons.star,color: AppColor.ratingStarColor,),     // full star
                                  empty: Icon(Icons.star_border, color: AppColor.ratingStarColor,),
                                  half: Image(image: Svg(AppImage.outlineStarIcon)), // outlined star
                                ),
                                onRatingUpdate: (rating) {}, // Required, even if not used
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                  "(${allProducts[index].ratingCount})",
                                style: AppTextStyles.ratingCountText,
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<AllProductModel> wishListProduct = [];
