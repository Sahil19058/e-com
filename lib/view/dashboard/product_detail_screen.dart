import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../controller/product_detail_controller.dart';
import '../../model/all_product_model.dart';
import '../../utils/appcolor.dart';
import '../../utils/appimage.dart';
import '../../utils/apptextstyle.dart';

class ProductDetailScreen extends GetView<ProductDetailController> {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // final ProductDetailController controller = Get.put(
    //   ProductDetailController(),
    // );

    final AllProductModel product = Get.arguments as AllProductModel;

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
              decoration: const BoxDecoration(
                color: AppColor.productDetailBackgroundColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            height: 532,
            width: Get.width,
            decoration: const BoxDecoration(
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
                    color: Colors.grey.withValues(alpha: 0.5),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: const Offset(0, -4), // negative Y offset for top shadow
                  ),
                ],
                color: AppColor.fontWhite,
                borderRadius: const BorderRadius.only(
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
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                product.productName,
                                style: AppTextStyles.productDetailText,
                              ),
                              const Spacer(),
                              Text(
                                product.productPrice,
                                style: AppTextStyles.productDetailPriseText,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              RatingBar(
                                glow: false,
                                ignoreGestures: true, // Makes it read-only
                                initialRating: product.productRating.toDouble(),
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 20.0,
                                ratingWidget: RatingWidget(
                                  full: const Icon(
                                    Icons.star,
                                    color: AppColor.ratingStarColor,
                                  ), // full star
                                  empty: const Icon(
                                    Icons.star_border,
                                    color: AppColor.ratingStarColor,
                                  ),
                                  half: const Image(
                                    image: Svg(AppImage.outlineStarIcon),
                                  ), // outlined star
                                ),
                                onRatingUpdate:
                                    (rating) {}, // Required, even if not used
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "(${product.ratingCount})",
                                style: AppTextStyles.womenCardText,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 5),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
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
                                      final isSelected = controller.selectedColorIndex.value == index;
                                      return Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: GestureDetector(
                                          onTap: () => controller.selectedColorIndex(index),
                                          child: Container(
                                            height: 33,
                                            width: 33,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color:
                                                  product.productColor[index],
                                              border: isSelected ? Border.all(
                                                color:
                                                AppColor.notLikeColor,
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

                              const Spacer(),

                              /// This is the size part of the product
                              SizedBox(
                                height: 34,
                                width: 115,
                                child: ListView.builder(
                                  itemCount: product.productSize.length,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: false,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Obx(() {
                                      final isSelected = controller.selectedSizeIndex.value == index;
                                      return Padding(
                                        padding: const EdgeInsets.only(left: 3),
                                        child: GestureDetector(
                                          onTap: () => controller.selectedSizeIndex(index),
                                          child: Container(
                                            height: 33,
                                            width: 33,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color:
                                              isSelected
                                                  ? AppColor.fontBlack
                                                  : AppColor.circleColor,
                                            ),
                                            child: Center(
                                              child: Text(
                                                product.productSize[index],
                                                style: TextStyle(
                                                  color:
                                                     isSelected ? AppColor.fontWhite : AppColor.fontBlack,
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

                        const SizedBox(height: 10),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        const SizedBox(height: 10),

                        /// This is the description part of the product
                        GestureDetector(
                          onTap: controller.toggleDescription,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                const Text(
                                  "Description",
                                  style: AppTextStyles.drawerSubText,
                                ),
                                const Spacer(),
                                Obx(
                                  () => Image(
                                    image:
                                    controller.showDescription.value
                                        ? const Svg(AppImage.arrowDownIcon)
                                        : const Svg(
                                      AppImage.arrowForwardIcon,
                                    ),
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
                                const SizedBox(height: 10),
                                const Divider(color: AppColor.divedertColor),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  child: Text(
                                    product.productDescription, // or hardcoded text for now
                                    style: AppTextStyles.drawerOtherText,
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        }),

                        const SizedBox(height: 10),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        const SizedBox(height: 10),

                        /// This is for review part of the product
                        GestureDetector(
                          onTap: controller.toggleReviews,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                const Text(
                                  "Reviews",
                                  style: AppTextStyles.drawerSubText,
                                ),
                                const Spacer(),
                                Obx(
                                  () => Image(
                                    image: controller.showReviews.value
                                        ? const Svg(AppImage.arrowDownIcon)
                                        : const Svg(
                                      AppImage.arrowForwardIcon,
                                    ),
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
                                  const SizedBox(height: 10),
                                  const Divider(color: AppColor.divedertColor),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        product.productRating.toDouble().toString(),
                                        style: AppTextStyles.productDetailReviewText,
                                      ),
                                      const SizedBox(width: 5),
                                      const Text(
                                        "OUT OF 5",
                                        style: AppTextStyles.womenCardText,
                                      ),
                                      const Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          RatingBar(
                                            ignoreGestures:
                                                true, // Makes it read-only
                                            initialRating:
                                                product.productRating.toDouble(),
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemSize: 18.0,
                                            ratingWidget: RatingWidget(
                                              full: const Icon(
                                                Icons.star,
                                                color: AppColor.ratingStarColor,
                                              ), // full star
                                              empty: const Icon(
                                                Icons.star_border,
                                                color: AppColor.ratingStarColor,
                                              ),
                                              half: const Image(
                                                image: Svg(
                                                  AppImage.outlineStarIcon,
                                                ),
                                              ), // outlined star
                                            ),
                                            onRatingUpdate: (rating,) {}, // Required, even if not used
                                          ),

                                          const SizedBox(width: 5),

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
                            return const SizedBox.shrink();
                          }
                        }),

                        const SizedBox(height: 10),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        const SizedBox(height: 10),

                        GestureDetector(
                          onTap: controller.toggleSimilarProduct,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                const Text(
                                  "Similar Products",
                                  style: AppTextStyles.drawerSubText,
                                ),

                                const Spacer(),

                                Obx(
                                  () => Image(
                                    image:
                                    controller.similarProduct.value
                                        ? const Svg(AppImage.arrowDownIcon)
                                        : const Svg(
                                      AppImage.arrowForwardIcon,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(color: AppColor.divedertColor),
                        ),

                        Obx(() {
                          if (controller.similarProduct.value) {
                            return Column(
                              children: [
                                // Divider(color: AppColor.divedertColor),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: SizedBox(
                                    height: 227,
                                    child: ListView.builder(
                                      itemCount: controller.similarProducts.length,
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
                                                      controller
                                                          .similarProducts[index]
                                                          .productImage,
                                                    ),
                                                  ),
                                                ),
                                                // color: Colors.black,
                                              ),
                                            ),

                                            Text(
                                              controller.similarProducts[index].productName,
                                              style: AppTextStyles.productNameText,
                                            ),

                                            Text(
                                              "\$ ${controller.similarProducts[index].productPrice.toDouble().toString()}",
                                              style: AppTextStyles.drawerSubText,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Divider(color: AppColor.divedertColor),
                                ),
                              ],
                            );
                          } else {
                            return const SizedBox.shrink();
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
                decoration: const BoxDecoration(
                  color: AppColor.productDetailButtonColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),

                child: const Center(
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