import 'package:get/get.dart';

import '../../../../controller/my_orders_controller.dart';

class MyOrderBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(OrderTabController());
  }

}