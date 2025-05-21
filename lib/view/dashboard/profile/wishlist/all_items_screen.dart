import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import '../../../../constant/routes_name.dart';
import '../../../../controller/dresses_controller.dart';
import '../../../../utils/appcolor.dart';
import '../../../../utils/appimage.dart';
import '../../../../utils/apptextstyle.dart';
import '../../dresses_screen.dart';

class AllItemsScreen extends StatelessWidget {
  const AllItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DressesController controller = Get.put(DressesController());

    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = (screenWidth / 180).floor().clamp(2, 4);
    final childAspectRatio = screenWidth < 600 ? 0.55 : 0.65;

    return Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.03, // Responsive horizontal padding
          vertical: screenWidth * 0.02,
        ),
        child: GridView.builder(
          itemCount: controller.allProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: screenWidth * 0.05, // Responsive spacing
            mainAxisSpacing: screenWidth * 0.05,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(RouteName.productDetailScreen,
                    arguments: controller.allProducts[index]);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                  controller.allProducts[index].productImage),
                              fit: BoxFit.cover, // Ensure image scales properly
                            )
                          ),
                        ),
                        Positioned(
                          right: screenWidth * 0.02,
                          top: screenWidth * 0.02,
                          child: Container(
                            height: screenWidth * 0.06, // Responsive icon size
                            width: screenWidth * 0.06,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.fontWhite,
                            ),
                            child: Obx(() {
                              final isFav = controller
                                  .allProducts[index].isFavorite.value;
                              return GestureDetector(
                                onTap: () {
                                  controller.allProducts[index].isFavorite
                                      .toggle();
                                  if (controller
                                      .allProducts[index].isFavorite.value) {
                                    if (!wishListProduct.contains(
                                        controller.allProducts[index])) {
                                      wishListProduct
                                          .add(controller.allProducts[index]);
                                    }
                                  } else {
                                    wishListProduct
                                        .remove(controller.allProducts[index]);
                                  }
                                },
                                child: Image(
                                  image: const Svg(AppImage.favoriteIcon),
                                  color: isFav
                                      ? AppColor.notLikeColor
                                      : AppColor.likeColor,
                                  fit: BoxFit.scaleDown,
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.015), // Responsive spacing
                  Text(
                    controller.allProducts[index].productName,
                    style: AppTextStyles.productNameText.copyWith(
                      fontSize: screenWidth < 600 ? 14 : 16, // Responsive font
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        controller.allProducts[index].productPrice,
                        style: AppTextStyles.drawerSubText.copyWith(
                          fontSize: screenWidth < 600 ? 12 : 14,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.015),
                      Text(
                        controller.allProducts[index].productRealPrice,
                        style: AppTextStyles.womenCardText.copyWith(
                          fontSize: screenWidth < 600 ? 12 : 14,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AppColor.secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar(
                        ignoreGestures: true,
                        initialRating: controller
                            .allProducts[index].productRating
                            .toDouble(),
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: screenWidth < 600 ? 15.0 : 18.0, // Responsive
                        ratingWidget: RatingWidget(
                          full: const Icon(
                            Icons.star,
                            color: AppColor.ratingStarColor,
                          ),
                          empty: const Icon(
                            Icons.star_border,
                            color: AppColor.ratingStarColor,
                          ),
                          half: const Image(
                            image: Svg(AppImage.outlineStarIcon),
                          ),
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(width: screenWidth * 0.015),
                      Text(
                        "(${controller.allProducts[index].ratingCount})",
                        style: AppTextStyles.ratingCountText.copyWith(
                          fontSize: screenWidth < 600 ? 12 : 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}