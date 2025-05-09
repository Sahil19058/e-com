import 'package:flutter/material.dart';
import 'package:untitled7/view/dashboard/dresses_screen.dart';

class AllItemsScreen extends StatelessWidget {
  const AllItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
          itemCount: wishListProduct.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.green,
                child: Text(wishListProduct.length.toString()),
              );
            },
        )
    );
  }
}
