import 'package:flutter/material.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/appimage/appimage.dart';

import '../../../widgets/common_appbar.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.fontWhite,
      appBar: commonAppBar(title: "Voucher",center: true),
      // body: Center(
      //   child: ListView(
      //     padding: const EdgeInsets.all(20),
      //     shrinkWrap: true,
      //     children: [
      //       Align(
      //         child: TicketClipper(
      //           clipper: RoundedEdgeClipper(
      //             edge: Edge.left,
      //             points: 5,
      //             depth: 20,
      //           ),
      //           child: Container(
      //             height: 150,
      //             width: 300,
      //             decoration: const BoxDecoration(
      //                 color: Colors.purple,
      //               borderRadius: BorderRadius.only(topRight:  Radius.circular(20),bottomRight: Radius.circular(20))
      //             ),
      //             child: const Center(
      //               child: Text(
      //                 'Rounded Edge Clipper',
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(
      //                   fontSize: 22,
      //                   fontWeight: FontWeight.w500,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      
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
