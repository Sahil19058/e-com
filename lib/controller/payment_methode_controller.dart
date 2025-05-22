import 'package:get/get.dart';
import '../utils/appimage.dart';

class PaymentMethodeController extends GetxController{

  final List<String> paymentMethod = [
    AppImage.payPalImage,
    AppImage.visaImage,
    AppImage.masterCardImage,
    AppImage.aliPayImage,
    AppImage.amexImage,
  ];

}