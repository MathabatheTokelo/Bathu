import 'package:bathu/components/CustomerSection.dart';
import 'package:bathu/models/productList.dart';
import 'package:bathu/widgets/button.dart';
import 'package:bathu/widgets/customAppBar.dart';
import 'package:bathu/widgets/headingTextWidget.dart';
import 'package:bathu/components/posterSection.dart';
import 'package:bathu/components/products.dart';
import 'package:bathu/components/secondGrid.dart';
import 'package:flutter/material.dart';

import 'components/history.dart';

void main() {
  runApp(Bathu());
}

class Bathu extends StatefulWidget {
  @override
  State<Bathu> createState() => _BathuState();
}

class _BathuState extends State<Bathu> {
  ProductList products = ProductList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gilroy-Bold'),
      home: Scaffold(
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
        body: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  PosterSection(),
                  const SizedBox(height: 20),
                  HeadingTextWidget(st: "SKY EDITION"),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 350,
                    child: Products(productss: products.productList1),
                  ),
                  const SizedBox(height: 30),
                  Button(st: "VIEW ALL PRODUCTS"),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      Card(elevation: 10, child: SecondGrid()),
                      const Card(
                        elevation: 10,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                      About()
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "THE ORIGINAL.",
                    style: TextStyle(
                        color: Color(0xff1c1b1b),
                        fontSize: 10,
                        letterSpacing: 4,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy-Bold'),
                  ),
                  const SizedBox(height: 10),
                  HeadingTextWidget(st: "MESH EDITION - AFRICA'S SNEAKER."),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 350,
                    child: Products(productss: products.productList2),
                  ),
                  const SizedBox(height: 30),
                  Button(st: "VIEW ALL MESH EDITION SNEAKERS"),
                  const SizedBox(height: 35),
                  const Text(
                    "WHAT OUR CUSTOMERS SAY...",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4),
                  ),
                  CustomerSection(),
                  //
                ]),
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
