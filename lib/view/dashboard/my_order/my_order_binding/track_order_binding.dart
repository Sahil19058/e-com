import 'package:get/get.dart';

import '../../../../controller/review_controller.dart';
import '../../../../controller/tracking_order_controller.dart';

class TrackOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrackingOrderController());
    Get.put(ReviewController());
  }
}
