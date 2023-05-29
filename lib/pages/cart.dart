import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 18,
        title: const Center(
          child: Text(
            "WISHING YOU ALL THE BEST FOR 2023 | FIND A STORE | EMAIL US ON INFO@BATHU.CO.ZA",
            style: TextStyle(
              color: Colors.white,
              fontSize: 6,
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gilroy-Bold',
            ),
          ),
        ),
        elevation: 10,
      ),
    );
  }
}
