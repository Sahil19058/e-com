import 'package:get/get.dart';

class DiscoverController extends GetxController {
  var isExpanded = false.obs;

  void toggleExpand() {
    isExpanded.value = !isExpanded.value;
  }
}
