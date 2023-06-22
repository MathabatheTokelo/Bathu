import 'package:bathu/models/productList.dart';
import 'package:flutter/material.dart';

import '../components/products.dart';
import '../widgets/customAppBar.dart';

class FullProducts extends StatelessWidget {
  var p;

  FullProducts({this.p});
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            ),
          ),
        ),
        elevation: 10,
      ),
      key: _key,
      body: Column(
        children: [
          Container(
            height: 90,
            child: CustomAppBar(draw: _key.currentState!.openDrawer),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "SORT",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.grey),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      " |  FILTER",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              elevation: 1,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 580,
              child: Products(productss: p),
            ),
          )
        ],
      ),
    );
  }
}
