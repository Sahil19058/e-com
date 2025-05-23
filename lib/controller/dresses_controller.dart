import 'package:get/get.dart';
import '../model/all_product_model.dart';
import '../utils/appcolor.dart';
import '../utils/appimage.dart';
import '../view/dashboard/dresses_screen.dart';

class DressesController extends GetxController {
  List<AllProductModel> allProducts = [
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 52.00",
      "\$ 90.00",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      5,
      36,
    ),
    AllProductModel(
      AppImage.product2Image,
      "Linen Dress",
      "\$ 68.00",
      "\$ 90.00",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      4,
      97,
    ),
    AllProductModel(
      AppImage.product2Image,
      "Linen Dress",
      "\$ 65.00",
      "",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      3,
      92,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 34.00",
      "\$ 90.00",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      3,
      89,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 100.00",
      "",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      4,
      48,
    ),
    AllProductModel(
      AppImage.product2Image,
      "Linen Dress",
      "\$ 52.00",
      "\$ 90.00",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      5,
      86,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 52.00",
      "",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      2,
      50,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 96.00",
      "",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      4,
      49,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 75.00",
      "\$ 90.00",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      4,
      32,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 63.00",
      "",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      4,
      87,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 55.00",
      "",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      5,
      65,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 52.00",
      "",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      4,
      63,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 42.00",
      "",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      4,
      73,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 28.00",
      "\$ 90.00",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      4,
      20,
    ),
    AllProductModel(
      AppImage.product1Image,
      "Linen Dress",
      "\$ 64.00",
      "\$ 90.00",
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
      [AppColor.productColor1, AppColor.productColor2, AppColor.productColor3],
      ["M", "S", "L"],
      5,
      15,
    ),
  ];

    void functionForAddToFav(int index){
    allProducts[index].isFavorite.toggle();
    if (allProducts[index].isFavorite.value) {
      if (!wishListProduct.contains(allProducts[index])) {
        wishListProduct.add(allProducts[index]);
        // print(wishListProduct.length);
      }
    } else {
      wishListProduct.remove(allProducts[index]);
      // print(wishListProduct.length);
    }
  }

}
