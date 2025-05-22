import 'package:get/get.dart';

import '../../../../controller/address_controller.dart';

class AddressBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(AddressController());
  }

}