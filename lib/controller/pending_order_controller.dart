import 'package:get/get.dart';

import '../model/pending_order_model.dart';

  class PendingOrderController extends GetxController{


  List<PendingOrderModel> pendingOrders = [
    PendingOrderModel(
      orderId: 1525,
      trackingNumber: "IN256698541",
      quantity: 2,
      subTotal: 320,
    ),
    PendingOrderModel(
      orderId: 1535,
      trackingNumber: "IN985242141",
      quantity: 3,
      subTotal: 600,
    ),
    PendingOrderModel(
      orderId: 1581,
      trackingNumber: "IN325874569",
      quantity: 1,
      subTotal: 499,
    ),
    PendingOrderModel(
      orderId: 1593,
      trackingNumber: "IN758654125",
      quantity: 1,
      subTotal: 369,
    ),
    PendingOrderModel(
      orderId: 1589,
      trackingNumber: "IN655874513",
      quantity: 4,
      subTotal: 299,
    ),
  ];

}