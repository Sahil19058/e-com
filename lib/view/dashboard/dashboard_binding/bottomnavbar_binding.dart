import 'package:get/get.dart';

import '../../../controller/bottomnav.dart';

class BottomNavbarBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(BottomNavController());
  }

}