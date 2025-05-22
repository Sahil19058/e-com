import 'package:get/get.dart';

import '../../../../controller/pending_order_controller.dart';

class PendingOrderBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(PendingOrderController());
  }


}