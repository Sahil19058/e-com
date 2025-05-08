import 'dart:core';
import 'package:flutter/material.dart';
import 'package:untitled7/utils/appcolor/appcolor.dart';
import 'package:untitled7/utils/apptextstyle/apptextstyle.dart';
import '../../../model/pending_order_model.dart';
import 'package:intl/intl.dart';

class CancelledOrderScreen extends StatelessWidget {
  const CancelledOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<PendingOrderModel> pendingOrders = [
      PendingOrderModel(
        orderId: 1525,
        trackingNumber: "IN256698541",
        quantity: 2,
        subTotal: 320,
      ),
      PendingOrderModel(
        orderId: 1535,
        trackingNumber: "IN985242141",
        quantity: 3,
        subTotal: 600,
      ),
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: pendingOrders.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: AppColor.fontWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 182,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.fontWhite,
                  ),
                  child: Column(
                    children: [

                      SizedBox(height: 20),

                      Row(
                        children: [

                          Text(
                            "Order #${pendingOrders[index].orderId}",
                            style: AppTextStyles.productDetailText,
                          ),

                          Spacer(),

                          Text(
                            DateFormat('dd/mm/yyyy').format(DateTime.now()),
                            style: AppTextStyles.drawerOtherText,
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [

                          Text(
                            "Tracking number: ",
                            style: AppTextStyles.drawerOtherText,
                          ),

                          Text(
                            pendingOrders[index].trackingNumber,
                            style: AppTextStyles.tabBarSecondaryText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      Row(
                        children: [

                          Text(
                            "Quantity: ",
                            style: AppTextStyles.drawerOtherText,
                          ),

                          Text(
                            pendingOrders[index].quantity.toString(),
                            style: AppTextStyles.tabBarSecondaryText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Spacer(),

                          Text(
                            "Subtotal: ",
                            style: AppTextStyles.drawerOtherText,
                          ),

                          Text(
                            "\$${pendingOrders[index].subTotal}",
                            style: AppTextStyles.tabBarSecondaryText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),

                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [

                          Text(
                            "CANCELLED",
                            style: AppTextStyles.cancelledText,
                          ),

                          Spacer(),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 9),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.secondaryTextColor
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text("Detail"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

