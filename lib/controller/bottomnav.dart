import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/routes_name.dart';
import '../model/app_constant.dart';
import '../model/other_item_model.dart';
import '../utils/appimage.dart';
import '../view/dashboard/category_selector.dart';
import '../view/dashboard/discover_screen.dart';
import '../view/dashboard/my_order/my_order_screen.dart';
import '../view/dashboard/profile/profile_screen.dart';

class BottomNavController extends GetxController {

  String getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return "Gemstore";
      case 1:
        return "Discover";
      case 2:
        return "My Orders";
      case 3:
        return "Profile";
      default:
        return "Gemstore";
    }
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  var selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
    update();
  }

  static List<AppConstant> menuItems = [
    AppConstant(icon: AppImage.homeIcon, title: 'Homepage'),
    AppConstant(icon: AppImage.searchIcon, title: 'Discover'),
    AppConstant(icon: AppImage.shopIcon, title: 'My Order'),
    AppConstant(icon: AppImage.profileIcon, title: 'My profile'),
  ];

  final List<OtherItem> otherItems = [
    OtherItem(iconImage: AppImage.settingIcon, iconName: 'Setting'),
    OtherItem(iconImage: AppImage.emailIcon, iconName: 'Support'),
    OtherItem(iconImage: AppImage.aboutIcon, iconName: 'About us'),
  ];

  final List<Widget> pages = [
    const CategorySelector(),
    const DiscoverScreen(),
    const MyOrdersScreen(),
    const ProfilePage(),
  ];

  // final List<String> svgIcons = [
  //   AppImage.homeIcon,
  //   AppImage.searchIcon,
  //   AppImage.shopIcon,
  //   AppImage.profileIcon,
  // ];

  void checkIndex(int index) {
    if (index == 0) {
      Get.snackbar("Coming Soon", "This Screen is not available");
      // Get.toNamed(RouteName.myWishlistScreen);
    } else if (index == 1) {
      Get.snackbar("Coming Soon", "This Screen is not available");
    } else if (index == 2) {
      Get.snackbar("Coming Soon", "This Screen is not available");
    } else if (index == 3) {
      Get.snackbar("Coming Soon", "This Screen is not available");
    }
  }

  void otherItemCheckIndex(int index) {
    if (index == 0) {
      Get.toNamed(RouteName.settingScreen);
    } else if (index == 1) {
      Get.snackbar("Coming soon", "This Screen is not available");
    } else if (index == 2) {
      Get.snackbar("Coming soon", "This Screen is not available");
    }
  }
}
