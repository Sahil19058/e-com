import 'package:get/get.dart';

import '../../../../controller/cancelled_order_controller.dart';

class CancelledOrderBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(CancelledOrderController());
  }
}