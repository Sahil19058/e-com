import 'package:get/get.dart';

import '../../../controller/signup_controller.dart';

class ForgotPass extends Bindings{
  @override
  void dependencies() {
    Get.put(SignUpController());
  }

}