import 'package:get/get.dart';

import '../../../controller/dresses_controller.dart';

class DressesBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DressesController());
  }

}