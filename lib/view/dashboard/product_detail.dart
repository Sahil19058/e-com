import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:untitled7/model/similar_product_model.dart';
import '../../controller/product_detail_controller.dart';
import '../../model/all_product_model.dart';
import '../../utils/appcolor/appcolor.dart';
import '../../utils/appimage/appimage.dart';
import '../../utils/apptextstyle/apptextstyle.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailController controller = Get.put(
      ProductDetailController(),
    );

    // final AllProductModel product = Get.arguments as AllProductModel;
    final args = Get.arguments;
    if (args == null || args is! AllProductModel) {
      return const Scaffold(
        body: Center(child: Text('Invalid or missing product data')),
      );
    }

    final AllProductModel product = args;

    List<SimilarProduct> similarProducts = [
      SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 39),
      SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 49),
      SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 32),
      SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 99),
      SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 79),
      SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 74),
      SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 69),
    ];

    return Scaffold(
      backgroundColor: AppColor.productDetailContainerColor,
      body: Stack(
        children: [
          Container(height: Get.height),
          Positioned(
            top: 80,
            left: 60,
            child: Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                color: AppColor.productDetailBackgroundColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            height: 532,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImage.productDetailModelImage),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: Get.height * 0.5,
              width: Get.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: Offset(0, -4), // negative Y offset for top shadow
                  ),
                ],
                color: AppColor.fontWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 77),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                product.productName,
                                style: AppTextStyles.productDetailText,
                              ),
                              Spacer(),
                              Text(
                                product.productPrice,
                                style: AppTextStyles.productDetailPriseText,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              RatingBar(
                                ignoreGestures: true, // Makes it read-only
                                initialRating: product.productRating.toDouble(),
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 20.0,
                                ratingWidget: RatingWidget(
                                  full: Icon(
                                    Icons.star,
                                    color: AppColor.ratingStarColor,
                                  ), // full star
                                  empty: Icon(
                                    Icons.star_border,
                                    color: AppColor.ratingStarColor,
                                  ),
                                  half: Image(
                                    image: Svg(AppImage.outlineStarIcon),
                                  ), // outlined star
                                ),
                                onRatingUpdate:
                                    (rating) {}, // Required, even if not used
                              ),
                              SizedBox(width: 5),
                              Text(
                                "(${product.ratingCount})",
                                style: AppTextStyles.womenCardText,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 5),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                "Color",
                                style: AppTextStyles.drawerOtherText,
                              ),
                              Spacer(),
                              Spacer(),
                              Text(
                                "Size",
                                style: AppTextStyles.drawerOtherText,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              /// This is the color part of the product
                              SizedBox(
                                height: 34,
                                width: 120,
                                child: ListView.builder(
                                  itemCount: product.productColor.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Obx(() {
                                      final isSelected =
                                          controller.selectedColorIndex.value == index;
                                      return Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: GestureDetector(
                                          onTap:
                                              () => controller.selectedColorIndex(index),
                                          child: Container(
                                            height: 33,
                                            width: 33,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color:
                                                  product.productColor[index],
                                              border:
                                                  isSelected
                                                      ? Border.all(
                                                        color: AppColor.notLikeColor,
                                                        width: 4,
                                                      ) : null,
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                                  },
                                ),
                              ),

                             Spacer(),

                              /// This is the size part of the product
                              SizedBox(
                                height: 34,
                                width: 115,
                                child: ListView.builder(
                                  itemCount: product.productSize.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Obx(() {
                                      final isSelected = controller.selectedSizeIndex.value == index;
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                          left: 3,
                                        ),
                                        child: GestureDetector(
                                          onTap:
                                              () => controller.selectedSizeIndex(index),
                                          child: Container(
                                            height: 33,
                                            width: 33,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: isSelected
                                                      ? Colors.black87
                                                      : AppColor.circleColor,
                                            ),
                                            child: Center(
                                              child: Text(
                                                product.productSize[index],
                                                style: TextStyle(
                                                  color: isSelected
                                                          ? Colors.white
                                                          : Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        SizedBox(height: 10),

                        /// This is the description part of the product
                        GestureDetector(
                          onTap: controller.toggleDescription,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Description",
                                  style: AppTextStyles.drawerSubText,
                                ),
                                Spacer(),
                                Obx(
                                  () => Image(
                                    image:
                                        controller.showDescription.value
                                            ? Svg(AppImage.arrowDownIcon)
                                            : Svg(AppImage.arrowForwardIcon),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Obx(() {
                          if (controller.showDescription.value) {
                            return Column(
                              children: [
                                SizedBox(height: 10),
                                Divider(color: AppColor.divedertColor),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  child: Text(
                                    product
                                        .productDescription, // or hardcoded text for now
                                    style: AppTextStyles.drawerOtherText,
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        }),

                        SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        SizedBox(height: 10),

                        /// This is for review part of the product
                        GestureDetector(
                          onTap: controller.toggleReviews,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Reviews",
                                  style: AppTextStyles.drawerSubText,
                                ),
                                Spacer(),
                                Obx(
                                  () => Image(
                                    image:
                                        controller.showReviews.value
                                            ? Svg(AppImage.arrowDownIcon)
                                            : Svg(AppImage.arrowForwardIcon),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Obx(() {
                          if (controller.showReviews.value) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  Divider(color: AppColor.divedertColor),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        product.productRating
                                            .toDouble()
                                            .toString(),
                                        style:
                                            AppTextStyles
                                                .productDetailReviewText,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "OUT OF 5",
                                        style: AppTextStyles.womenCardText,
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          RatingBar(
                                            ignoreGestures:
                                                true, // Makes it read-only
                                            initialRating:
                                                product.productRating
                                                    .toDouble(),
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemSize: 18.0,
                                            ratingWidget: RatingWidget(
                                              full: Icon(
                                                Icons.star,
                                                color: AppColor.ratingStarColor,
                                              ), // full star
                                              empty: Icon(
                                                Icons.star_border,
                                                color: AppColor.ratingStarColor,
                                              ),
                                              half: Image(
                                                image: Svg(
                                                  AppImage.outlineStarIcon,
                                                ),
                                              ), // outlined star
                                            ),
                                            onRatingUpdate:
                                                (
                                                  rating,
                                                ) {}, // Required, even if not used
                                          ),

                                          SizedBox(width: 5),

                                          Text(
                                            "${product.ratingCount} ratings",
                                            style: AppTextStyles.womenCardText,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        }),

                        SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        SizedBox(height: 10),

                        GestureDetector(
                          onTap: controller.toggleSimilarProduct,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Similar Products",
                                  style: AppTextStyles.drawerSubText,
                                ),

                                Spacer(),

                                Obx(
                                  () => Image(
                                    image:
                                        controller.similarProduct.value
                                            ? Svg(AppImage.arrowDownIcon)
                                            : Svg(AppImage.arrowForwardIcon),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        Obx(() {
                          if (controller.similarProduct.value) {
                            return Column(
                              children: [
                                // Divider(color: AppColor.divedertColor),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 227,
                                    child: ListView.builder(
                                      itemCount: similarProducts.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 15,
                                              ),
                                              child: Container(
                                                height: 172,
                                                width: 126,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      similarProducts[index]
                                                          .productImage,
                                                    ),
                                                  ),
                                                ),
                                                // color: Colors.black,
                                              ),
                                            ),

                                            Text(
                                              similarProducts[index]
                                                  .productName,
                                              style:
                                                  AppTextStyles.productNameText,
                                            ),

                                            Text(
                                              "\$ ${similarProducts[index].productPrice.toDouble().toString()}",
                                              style:
                                                  AppTextStyles.drawerSubText,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Divider(color: AppColor.divedertColor),
                                ),
                              ],
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Get.snackbar("Success", "Item is added to cart");
              },
              child: Container(
                height: 77,
                decoration: BoxDecoration(
                  color: AppColor.productDetailButtonColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),

                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: Svg(AppImage.fillShopeIcon)),

                      SizedBox(width: 10),

                      Text(
                        "Add To Cart",
                        style: AppTextStyles.productDetailButtonText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
