import 'package:get/get.dart';
import '../model/pending_order_model.dart';

class CancelledOrderController extends GetxController{

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
  ];

}