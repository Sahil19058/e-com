import 'package:get/get.dart';

import '../../../../controller/payment_methode_controller.dart';

class PaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PaymentMethodeController());
  }
}
