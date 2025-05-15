import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:untitled7/constant/routes_name.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';
import 'package:untitled7/view/dashboard/profile/profile_screen.dart';
import '../../controller/bottomnav.dart';
import 'bottomnavbar.dart';
import 'category_selector.dart';
import 'discover_screen.dart';
import 'my_order/my_order_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());


    // final DrawerControllerX drawerController = Get.put(DrawerControllerX());

    final List<Widget> pages = [
      CategorySelector(),
      const DiscoverScreen(),
      MyOrdersScreen(),
      ProfilePage(),
    ];

    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColor.fontWhite,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),

        child: Obx(() {
          final index = controller.selectedIndex.value;
          return index == 0 || index == 1 || index == 2
                ? AppBar(
                  scrolledUnderElevation: 0.0,
                  leading: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: const Image(image: Svg(AppImage.drawerIcon)),
                  ),
                  backgroundColor: AppColor.fontWhite,
                  title: Obx(
                    () => Text(
                      controller.selectedIndex.value == 0
                          ? "Gemstore"
                          : controller.selectedIndex.value == 1
                          ? "Discover"
                          : controller.selectedIndex.value == 2
                          ? "My Orders"
                          : "Profile ",
                      style: AppTextStyles.onBoardingTitle,
                    ),
                  ),
                  centerTitle: true,
                  actions: [
                    GestureDetector(
                      onTap: () => Get.toNamed(RouteName.notificationScreen),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Image(image: Svg(AppImage.notificationIcon)),
                      ),
                    ),
                  ],
                )
              : Container();
        }),
      ),

      drawer: Drawer(
        backgroundColor: AppColor.fontWhite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImage.avatarImage),
                      ),
                    ),
                  ),
                  const Column(
                    children: [
                      Text("Sunie Pham", style: AppTextStyles.drawerText),
                      Text(
                        "sunieux@gmail.com",
                        style: AppTextStyles.drawerSubText,
                      ),
                    ],
                  ),
                ],
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: 250,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: BottomNavController.menuItems.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: (){
                            controller.checkIndex(index);
                          },
                        child: ListTile(
                          leading: Image(
                            image: Svg(BottomNavController.menuItems[index].icon??""),
                            color: AppColor.secondaryTextColor,
                          ),
                          title: Text(
                            BottomNavController.menuItems[index].title ?? "",
                            style: AppTextStyles.drawerMenuText,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
          
              const SizedBox(height: 40),
          
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text("OTHER", style: AppTextStyles.drawerOtherText),
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: 240,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.otherItem.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          controller.otherItemCheckIndex(index);
                        },
                        child: ListTile(
                          leading: Image(
                            image: Svg(controller.otherItem[index]['icon']),
                            color: AppColor.secondaryTextColor,
                          ),
                          title: Text(
                            controller.otherItem[index]['title'],
                            style: AppTextStyles.drawerMenuText,
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
      ),

      body: Obx(() => pages[controller.selectedIndex.value]),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
