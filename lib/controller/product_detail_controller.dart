import 'package:get/get.dart';

class ProductDetailController extends GetxController {

  var selectedColorIndex = 0.obs;
  var selectedSizeIndex = 0.obs;

  RxBool showDescription = false.obs;
  RxBool showReviews = false.obs;
  RxBool similarProduct = false.obs;

  void toggleDescription() {
    showDescription.value = !showDescription.value;
  }

  void toggleReviews() {
    showReviews.value = !showReviews.value;
  }

  void toggleSimilarProduct() {
    similarProduct.value = !similarProduct.value;
  }

}