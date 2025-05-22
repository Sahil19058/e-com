import 'package:get/get.dart';
import '../../../../controller/women_category_controller.dart';

class WomenCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WomenCategoryController());
  }
}