import 'package:get/get.dart';
import '../../../controller/signup_controller.dart';

class NewPass extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpController());
  }
}
