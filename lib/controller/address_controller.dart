import 'package:get/get.dart';

import '../model/address_model.dart';
import '../utils/appimage/appimage.dart';

class AddressController extends GetxController {

  final RxInt selectedAddressIndex = 0.obs;

  List<AddressModel> addresses = [
    AddressModel("My Office", "SBI Building, street 3, Software Park", AppImage.officeIcon),
    AddressModel("My Home", "SBI Building, street 3, Software Park", AppImage.homeAddressIcon),
  ];
}