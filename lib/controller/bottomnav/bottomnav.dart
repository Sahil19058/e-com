import 'package:get/get.dart';

import '../../utils/appimage/appimage.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
    update();
  }

  final List<Map<String, dynamic>> menuItems = [
    {'icon': AppImage.homeIcon, 'title': 'Homepage'},
    {'icon': AppImage.searchIcon, 'title': 'Discover'},
    {'icon': AppImage.shopIcon, 'title': 'My Order'},
    {'icon': AppImage.profileIcon, 'title': 'My profile'},
  ];

  final List<String> svgIcons = [
    AppImage.homeIcon,
    AppImage.searchIcon,
    AppImage.shopIcon,
    AppImage.profileIcon,
  ];


}
