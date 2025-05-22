import 'package:get/get.dart';

import '../../../../controller/user_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(UserController());
  }

}