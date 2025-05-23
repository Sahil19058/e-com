import 'package:get/get.dart';

import '../../../controller/discover_controller.dart';
import '../../../controller/filter_discover_controller.dart';
import '../../../controller/slider_controller.dart';

class DiscoverBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DiscoverController());
    Get.put(FilterDiscoverController());
    Get.put(SliderController());
  }

}