import 'dart:ui';

class ProductModel {
  String productImage;
  String productName;
  String productPrice;
  String productDescription;
  List<Color> productColor;
  List<String> productSize;

  ProductModel(
    this.productImage,
    this.productName,
    this.productPrice,
    this.productDescription,
    this.productColor,
    this.productSize,
  );
}
