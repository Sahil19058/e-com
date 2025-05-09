import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:untitled7/view/dashboard/dresses_screen.dart';
import '../../../../constant/routes_name.dart';
import '../../../../controller/dresses_controller.dart';
import '../../../../utils/appcolor/appcolor.dart';
import '../../../../utils/appimage/appimage.dart';
import '../../../../utils/apptextstyle/apptextstyle.dart';

class AllItemsScreen extends StatelessWidget {
  const AllItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DressesController controller =  Get.put(DressesController());
    return Flexible(
        child:  GridView.builder(
          itemCount: controller.allProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                            decoration: BoxDecoration(
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
                                    }
                                  } else {
                                    wishListProduct.remove(controller.allProducts[index]);
                                  }
                                },
                                child: Image(
                                  image: Svg(AppImage.favoriteIcon),
                                  color: isFav ? AppColor.notLikeColor : AppColor.likeColor ,
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
                        SizedBox(width: 5),
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
        )
    );
  }
}
