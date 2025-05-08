import 'dart:ui';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

class AllProductModel {
  String productImage;
  String productName;
  String productPrice;
  String productRealPrice;
  String productDescription;
  List<Color> productColor;
  List<String> productSize;
  int productRating;
  int ratingCount;
  RxBool isFavorite;

  AllProductModel(
    this.productImage,
    this.productName,
    this.productPrice,
    this.productRealPrice,
    this.productDescription,
    this.productColor,
    this.productSize,
    this.productRating,
    this.ratingCount, [
    bool isFavorite = false,
  ]) : isFavorite = RxBool(isFavorite);
}
