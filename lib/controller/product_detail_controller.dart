import 'package:get/get.dart';
import '../model/similar_product_model.dart';
import '../utils/appimage.dart';

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

  List<SimilarProduct> similarProducts = [
    SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 39),
    SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 49),
    SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 32),
    SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 99),
    SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 79),
    SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 74),
    SimilarProduct(AppImage.similarProductImage, "Rise Crop Hoodie", 69),
  ];
}
