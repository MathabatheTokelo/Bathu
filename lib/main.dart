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
  runApp(const Bathu());
}

class Bathu extends StatefulWidget {
  const Bathu({Key? key}) : super(key: key);

  @override
  State<Bathu> createState() => _BathuState();
}

class _BathuState extends State<Bathu> {
  ProductList products = ProductList();

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.black),
          colorScheme: ColorScheme.light(primary: Colors.black),
          fontFamily: 'Gilroy-Bold'),
      home: Scaffold(
        key: _key,
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
              ),
            ),
          ),
          elevation: 10,
        ),
        drawer: Drawer(backgroundColor: Colors.white60),
        body: Column(
          children: [
            Container(
              height: 90,
              child: CustomAppBar(draw: () {
                _key.currentState!.openDrawer();
              }),
            ),
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
                  Button(st: "VIEW ALL PRODUCTS", pList: products.productList1),
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
                    ),
                  ),
                  const SizedBox(height: 10),
                  HeadingTextWidget(st: "MESH EDITION - AFRICA'S SNEAKER."),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 350,
                    child: Products(productss: products.productList2),
                  ),
                  const SizedBox(height: 30),
                  Button(
                      st: "VIEW ALL MESH EDITION SNEAKERS",
                      pList: products.productList2),
                  const SizedBox(height: 35),
                  const Text(
                    "WHAT OUR CUSTOMERS SAY...",
                    style: TextStyle(
                        fontSize: 13,
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
