import 'package:get/get.dart';

import '../model/catagory_item.dart';
import '../utils/appimage/appimage.dart';

class CategoryController extends GetxController {
  var selectedIndex = 0.obs;

  void selectCategory(int index) {
    selectedIndex.value = index;
  }

  final List<CategoryItem> categories = [
    CategoryItem(icon: AppImage.womenIcon, label: 'Women'),
    CategoryItem(icon: AppImage.menIcon, label: 'Men'),
    CategoryItem(icon: AppImage.accessoriesIcon, label: 'Accessories'),
    CategoryItem(icon: AppImage.beautyIcon, label: 'Beauty'),
  ];
}
