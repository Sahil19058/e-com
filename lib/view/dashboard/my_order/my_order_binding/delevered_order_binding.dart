import 'package:get/get.dart';

import '../../../../controller/delevered_order_controller.dart';

class DeliveredOrderBinging extends Bindings{
  @override
  void dependencies() {
    Get.put(DeliveredOrderController());
  }
}