import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String itemName;
  final String itemDescription;
  final double itemPrice;
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;

  ProductDetails({
    required this.itemName,
    required this.itemDescription,
    required this.itemPrice,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              imageUrl1,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
