import 'package:get/get.dart';

class OrderTabController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }
  final List<String> tabs = ["Pending", "Delivered", "Cancelled"];
}
