import 'package:get/get.dart';
import '../model/stepperdara_model.dart';

class TrackingOrderController extends GetxController {
  List<StepperData> stepperData = [
    StepperData(
      title: "Parcel is successfully delivered",
      date: "15 May 10:20",
    ),
    StepperData(title: "Parcel is out for delivery", date: "14 May 08:00"),
    StepperData(
      title: "Parcel is received at delivery Branch",
      date: "13 May 17:25",
    ),
    StepperData(title: "Parcel is in transit ", date: "13 May 07:00"),
    StepperData(title: "Sender has shipped your parcel", date: "12 May 14:25"),
    StepperData(
      title: "Sender is preparing to ship your order",
      date: "12 May 10:01",
    ),
  ];
}
