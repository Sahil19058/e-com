import 'package:flutter/material.dart';
import '../../../utils/appcolor.dart';
import '../../../utils/appimage.dart';
import '../../../widgets/common_appbar.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: "Voucher",center: true),

      body: const Column(
        children: [
          Image(image: AssetImage(AppImage.voucher1Image)),

          Image(image: AssetImage(AppImage.voucher2Image)),

          Image(image: AssetImage(AppImage.voucher3Image)),
        ],
      ),
    );
  }
}
