import 'package:get/get.dart';

import '../../../controller/catagoty_controller.dart';
import '../../../controller/women_category_controller.dart';

class CategorySelectorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoryController());
    Get.put(WomenCategoryController());
  }
}
