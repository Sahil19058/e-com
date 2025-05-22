import 'package:get/get.dart';

import '../../../../../controller/my_wishlist_controller.dart';

class MyWishListBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(TabControllerX());
  }

}