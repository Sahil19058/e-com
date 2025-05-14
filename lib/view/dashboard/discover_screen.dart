import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:untitled7/constant/routes_name.dart';
import '../../controller/discover_controller.dart';
import '../../controller/filter_discover_controller.dart';
import '../../controller/slider_controller.dart';
import '../../utils/appcolor/appcolor.dart';
import '../../utils/appimage/appimage.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../../utils/apptextstyle/apptextstyle.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DiscoverController());
    final filterController = Get.put(FilterDiscoverController());
    final sliderController = Get.put(SliderController());

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Builder(
      builder: (context) => Scaffold(
        key: scaffoldKey,
        endDrawer: Drawer(
          backgroundColor: AppColor.fontWhite,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  final range = sliderController.priceRange.value;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Filter",
                            style: AppTextStyles.onBoardingTitle,
                          ),
                          Spacer(),
                          SizedBox(
                            height: 27,
                            width: 27,
                            child: Image(image: Svg(AppImage.filterIcon)),
                          ),
                        ],
                      ),
                      const Divider(color: AppColor.divedertColor),
                      const Text("Prise"),
                      SfRangeSlider(
                        tickShape: SfTickShape(),labelPlacement: LabelPlacement.betweenTicks,
                        stepSize: 10,
                        dragMode: SliderDragMode.both,
                        min: 10,
                        max: 500,
                        values: range,
                        interval: 100,
                        showTicks: false,
                        showLabels: false,
                        enableTooltip: false,
                        // tooltipShape: SfPaddleTooltipShape(),
                        activeColor: AppColor.fontBlack,
                        inactiveColor: AppColor.divedertColor,
                        endThumbIcon: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                        onChanged: (SfRangeValues newRange) {
                          sliderController.priceRange.value = newRange;
                          },
                        startThumbIcon: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${range.start.toInt()}",
                              style: AppTextStyles.secondaryText,
                            ),
                            Text(
                              "\$${range.end.toInt()}",
                              style: AppTextStyles.secondaryText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
        backgroundColor: AppColor.fontWhite,
        body: SingleChildScrollView(
          child: Obx(() => Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    // Search box
                    Expanded(
                      child: TextFormField(
                        cursorColor: AppColor.fontBlack,
                        decoration: InputDecoration(
                          prefixIcon: const Image(
                            image: Svg(AppImage.searchIcon),
                            color: AppColor.secondaryTextColor,
                          ),
                          fillColor: AppColor.circleColor,
                          filled: true,
                          hintText: "Search",
                          hintStyle: AppTextStyles.secondaryText,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              style: BorderStyle.none,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              style: BorderStyle.none,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              style: BorderStyle.none,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Filter button
                    GestureDetector(
                      onTap:
                          () => scaffoldKey.currentState?.openEndDrawer(),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: AppColor.circleColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Image(
                          image: Svg(AppImage.filterIcon),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    controller.toggleExpand();
                    },
                  child: Container(
                    height: 126,
                    decoration: BoxDecoration(
                      color: AppColor.discoverCard1Color,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "CLOTHING",
                            style: AppTextStyles.subtitle,
                          ),
                          const Spacer(),
                          Stack(
                            children: [
                              Positioned(
                                left: 15,
                                child: Container(
                                  height: 105,
                                  width: 105,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                    AppColor
                                        .discoverCard1Shadow1Color,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 28,
                                top: 15,
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                    AppColor
                                        .discoverCard1Shadow2Color,
                                  ),
                                ),
                              ),
                              Container(
                                height: 126,
                                width: 149,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      AppImage.discoverModel1Image,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (controller.isExpanded.value)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 396,
                    decoration: const BoxDecoration(
                      color: AppColor.fontWhite,
                    ),
                    child: ListView.builder(
                      itemCount: filterController.discoverProducts.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            final category =
                                filterController
                                    .discoverProducts[index]
                                    .productCategory;
                            if (category == "Dresses") {
                              Get.toNamed(RouteName.dressesScreen);
                            } else {
                              Get.snackbar(
                                "Coming Soon",
                                "this screen are not available ",
                              );
                            }
                            },
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  filterController
                                      .discoverProducts[index]
                                      .productCategory,
                                  style: AppTextStyles.onBoardingSubTitle,
                                ),
                                trailing: Text(
                                  "${filterController.discoverProducts[index].productQuantity.toString()} Items",
                                  style: AppTextStyles.womenCardText,
                                ),
                              ),
                              const Divider(
                                color: AppColor.divedertColor,
                              ),
                            ],
                          ),
                        );
                        },
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 126,
                  decoration: BoxDecoration(
                    color: AppColor.discoverCard2Color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Text(
                          "ACCESSORIES",
                          style: AppTextStyles.subtitle,
                        ),
                        const Spacer(),
                        Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 40,
                              child: Container(
                                height: 105,
                                width: 105,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                  AppColor.discoverCard2Shadow1Color,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 58,
                              top: 20,
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                  AppColor.discoverCard2Shadow2Color,
                                ),
                              ),
                            ),
                            Container(
                              height: 126,
                              width: 149,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImage.discoverModel2Image,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 126,
                  decoration: BoxDecoration(
                    color: AppColor.discoverCard3Color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Text(
                          "SHOES",
                          style: AppTextStyles.subtitle,
                        ),
                        const Spacer(),
                        Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 30,
                              child: Container(
                                height: 105,
                                width: 105,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                  AppColor.discoverCard3Shadow1Color,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 48,
                              top: 32,
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                  AppColor.discoverCard3Shadow2Color,
                                ),
                              ),
                            ),
                            Container(
                              height: 126,
                              width: 149,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImage.discoverModel3Image,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 126,
                  decoration: BoxDecoration(
                    color: AppColor.discoverCard4Color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Text(
                          "COLLECTION",
                          style: AppTextStyles.subtitle,
                        ),
                        const Spacer(),
                        Stack(
                          children: [
                            Positioned(
                              top: 10,
                              child: Container(
                                height: 105,
                                width: 105,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                  AppColor.discoverCard4Shadow1Color,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              top: 25,
                              child: Container(
                                height: 73,
                                width: 73,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                  AppColor.discoverCard4Shadow2Color,
                                ),
                              ),
                            ),
                            Container(
                              height: 126,
                              width: 83,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImage.discoverModel4Image,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
