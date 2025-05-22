import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../constant/routes_name.dart';
import '../model/profile_model.dart';
import '../utils/appimage.dart';

class UserController extends GetxController {
  var name = 'Sune Pam'.obs;
  var email = 'sunieux@gmail.com'.obs;

  void logout() {
    // Placeholder for logout logic
    Get.snackbar('Logout', 'You have been logged out');

  }

  final List<ProfileModel> menuItems = [
    ProfileModel(icon: AppImage.locationIcon, label: 'Address'),
    ProfileModel(icon: AppImage.walletIcon, label: 'Payment Method'),
    ProfileModel(icon: AppImage.ticketIcon, label: 'Voucher'),
    ProfileModel(icon: AppImage.favoriteIcon, label: 'My Wishlist'),
    ProfileModel(icon: AppImage.stareIcon, label: 'Rate this App'),
    ProfileModel(icon: AppImage.logOutIcon, label: 'Log out'),
  ];

  void checkProfileIndex(int menu) {
    if (menu == 0) {
      Get.toNamed(RouteName.addressScreen);
    } else if (menu == 1) {
      Get.toNamed(RouteName.paymentMethodScreen);
    } else if (menu == 2) {
      Get.toNamed(RouteName.voucherScreen);
    } else if (menu == 3) {
      Get.toNamed(RouteName.myWishlistScreen);
    } else if (menu == 4) {
      Get.toNamed(RouteName.rateThisAppScreen);
    } else if (menu == 5) {
      SystemNavigator.pop();
    }
  }
}
