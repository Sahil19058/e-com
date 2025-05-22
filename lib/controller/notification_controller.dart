import 'package:get/get.dart';

import '../model/notification_model.dart';

class NotificationController extends GetxController {
  List<NotificationModel> notificationsList = [
    NotificationModel(
      "Good morning! Get 20% Voucher",
      "Summer sale up to 20% off. Limited voucher. Get now!! 😜",
    ),
    NotificationModel(
      "Special offer just for you",
      "New Autumn Collection 30% off",
    ),
    NotificationModel("Holiday sale 50%", "Tap here to get 50% voucher."),
  ];
}
