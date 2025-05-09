import 'package:get/get.dart';

import '../../utils/appimage/appimage.dart';

class UserController extends GetxController {
  var name = 'Sune Pam'.obs;
  var email = 'sunieux@gmail.com'.obs;

  void logout() {
    // Placeholder for logout logic
    Get.snackbar('Logout', 'You have been logged out');
    // You can add navigation to login here
  }

  final List<Map> menuItems = [
    {'icon': AppImage.locationIcon, 'label': 'Address'},
    {'icon': AppImage.walletIcon, 'label': 'Payment Method'},
    {'icon': AppImage.ticketIcon, 'label': 'Voucher'},
    {'icon': AppImage.favoriteIcon, 'label': 'My Wishlist'},
    {'icon': AppImage.stareIcon, 'label': 'Rate this App'},
    {'icon': AppImage.logOutIcon, 'label': 'Log out'},
  ];
}
