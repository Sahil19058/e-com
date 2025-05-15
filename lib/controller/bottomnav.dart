import 'package:get/get.dart';

import '../constant/routes_name.dart';
import '../model/app_constant.dart';
import '../utils/appimage.dart';

class BottomNavController extends GetxController {
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

  final List<Map<String, dynamic>> otherItem = [
    {'icon': AppImage.settingIcon, 'title': 'Setting'},
    {'icon': AppImage.emailIcon, 'title': 'Support'},
    {'icon': AppImage.aboutIcon, 'title': 'About us'},
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

  void otherItemCheckIndex(int index){
    if(index == 0){
      Get.toNamed(RouteName.settingScreen);
    }else if(index == 1){
      Get.snackbar("Coming soon", "This Screen is not available");
    }else if(index == 2){
      Get.snackbar("Coming soon", "This Screen is not available");
    }


  }

}
