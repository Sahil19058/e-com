import 'package:get/get.dart';

import '../../../../../controller/dresses_controller.dart';

class AllItemBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DressesController());
  }

}