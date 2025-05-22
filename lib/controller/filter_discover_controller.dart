import 'package:get/get.dart';
import '../model/discover_product_model.dart';

class FilterDiscoverController extends GetxController {
  var isDrawerOpen = false.obs;

  void toggleDrawer() {
    isDrawerOpen.value = !isDrawerOpen.value;
  }

  void closeDrawer() {
    isDrawerOpen.value = false;
  }

  List<DiscoverProductModel> discoverProducts = [
    DiscoverProductModel("Jacket", 128),
    DiscoverProductModel("Skirts", 40),
    DiscoverProductModel("Dresses", 36),
    DiscoverProductModel("Sweaters", 24),
    DiscoverProductModel("Jeans", 14),
    DiscoverProductModel("T-Shirts", 12),
    DiscoverProductModel("Pants", 9),
  ];
}
