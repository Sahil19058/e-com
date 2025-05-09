import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';
import '../utils/appimage/appimage.dart';

class WomenCategoryController extends GetxController{
  final List<ProductModel> products = [
    ProductModel(AppImage.productImage, "Long Sleeve Dress", "\$45.00", "", [Colors.red, Colors.blue, Colors.green], ["S", "M", "L", "XL"]),
    ProductModel(AppImage.productImage, "Long Sleeve Dress", "\$45.00", "", [Colors.red, Colors.blue, Colors.green], ["S", "M", "L", "XL"]),
    ProductModel(AppImage.productImage, "Long Sleeve Dress", "\$45.00", "", [Colors.red, Colors.blue, Colors.green], ["S", "M", "L", "XL"]),
  ];

}