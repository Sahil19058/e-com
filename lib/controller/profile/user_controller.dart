import 'package:get/get.dart';

class UserController extends GetxController {
  var name = 'Sune Pam'.obs;
  var email = 'sunieux@gmail.com'.obs;

  void logout() {
    // Placeholder for logout logic
    Get.snackbar('Logout', 'You have been logged out');
    // You can add navigation to login here
  }
}
