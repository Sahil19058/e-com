import 'package:get/get.dart';

import '../../../../controller/review_controller.dart';

class ProductRatingBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ReviewController());
  }

}