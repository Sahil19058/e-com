import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../constant/routes_name.dart';
import '../../controller/dresses_controller.dart';
import '../../model/all_product_model.dart';
import '../../utils/appcolor.dart';
import '../../utils/appimage.dart';
import '../../utils/apptextstyle.dart';
import '../../widgets/common_appbar.dart';

class DressesScreen extends GetView<DressesController> {
  const DressesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // final DressesController controller =  Get.put(DressesController());

    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: "Dresses",center: false),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Found \n ${controller.allProducts.length} Results",
                  style: AppTextStyles.onBoardingTitle,
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 97,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.buttonOutlineColor),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
          const SizedBox(height: 20),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: controller.allProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteName.productDetailScreen,arguments: controller.allProducts[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image(image : AssetImage(controller.allProducts[index].productImage), ),
                              // Image(image: AssetImage(AppImage.product1Image)),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  height: 27,
                                  width: 27,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.fontWhite,
                                  ),
                                  child: Obx(() {
                                    final isFav = controller.allProducts[index].isFavorite.value;
                                    return GestureDetector(
                                      onTap: () {
                                        controller.allProducts[index].isFavorite.toggle();
                                        if (controller.allProducts[index].isFavorite.value) {
                                          if (!wishListProduct.contains(controller.allProducts[index])) {
                                            wishListProduct.add(controller.allProducts[index]);
                                            print(wishListProduct.length);
                                          }
                                        } else {
                                          wishListProduct.remove(controller.allProducts[index]);
                                          print(wishListProduct.length);
                                        }
                                      },
                                      child: Image(
                                        image: const Svg(AppImage.favoriteIcon),
                                        color: isFav ? AppColor.likeColor : AppColor.notLikeColor,
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            controller.allProducts[index].productName,
                            style: AppTextStyles.productNameText,
                          ),
                          Row(
                            children: [
                              Text(
                                controller.allProducts[index].productPrice,
                                style: AppTextStyles.drawerSubText,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                controller.allProducts[index].productRealPrice,
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
                                initialRating: controller.allProducts[index].productRating.toDouble(),
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 15.0,
                                ratingWidget: RatingWidget(
                                  full: const Icon(Icons.star,color: AppColor.ratingStarColor,),  // full star
                                  empty: const Icon(Icons.star_border, color: AppColor.ratingStarColor,),
                                  half: const Image(image: Svg(AppImage.outlineStarIcon)), // outlined star
                                ),
                                onRatingUpdate: (rating) {}, // Required, even if not used
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                  "(${controller.allProducts[index].ratingCount})",
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
