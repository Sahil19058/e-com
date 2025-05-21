import 'package:get/get.dart';
import '../../../controller/women_category_controller.dart';

class WomenCategory extends Bindings {
  @override
  void dependencies() {
    Get.put(WomenCategoryController());
  }
}