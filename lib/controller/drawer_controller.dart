// drawer_controller.dart
import 'package:get/get.dart';


class DrawerControllerX extends GetxController {
  var selectedIndex = 0.obs;
  var isDarkMode = false.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
  }


}
