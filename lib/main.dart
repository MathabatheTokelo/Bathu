import 'package:bathu/widgets/CustomerSection.dart';
import 'package:bathu/models/productList.dart';
import 'package:bathu/widgets/button.dart';
import 'package:bathu/widgets/customAppBar.dart';
import 'package:bathu/widgets/headingTextWidget.dart';
import 'package:bathu/components/posterSection.dart';
import 'package:bathu/components/products.dart';
import 'package:bathu/components/secondGrid.dart';
import 'package:bathu/widgets/khalanga.dart';
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

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.black),
          colorScheme: ColorScheme.light(primary: Color(0xff1c1b1b)),
          fontFamily: 'Gilroy-Bold'),
      home: Home(_globalKey, products),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  var _globalKey, products;
  Home(this._globalKey, this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff1c1b1b)),
        toolbarHeight: 60,
        flexibleSpace: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "WISHING YOU ALL THE BEST FOR 2023 | FIND A STORE | EMAIL US ON INFO@BATHU.CO.ZA",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                height: 55,
                child: CustomAppBar(draw: _globalKey),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
          width: 350,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 70,
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.close,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                ListTile(
                  title: const SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: Colors.white,
                      elevation: 1,
                      child: Text(
                        "NEW",
                        style: const TextStyle(
                            color: const Color(0xff1c1b1b),
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: Colors.white,
                      elevation: 1,
                      child: Text(
                        "ADULTS",
                        style: const TextStyle(
                            color: const Color(0xff1c1b1b),
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: Colors.white,
                      elevation: 1,
                      child: Text(
                        "KIDDIES",
                        style: const TextStyle(
                            color: const Color(0xff1c1b1b),
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: Colors.white,
                      elevation: 1,
                      child: Text(
                        "PARTNERSHIPS",
                        style: const TextStyle(
                            color: const Color(0xff1c1b1b),
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: Colors.white,
                      elevation: 1,
                      child: Text(
                        "ABOUT US",
                        style: const TextStyle(
                            color: const Color(0xff1c1b1b),
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: Colors.white,
                      elevation: 1,
                      child: Text(
                        "STORES",
                        style: const TextStyle(
                            color: const Color(0xff1c1b1b),
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const SizedBox(
                    width: double.infinity,
                    child: Card(
                      shadowColor: Colors.white,
                      elevation: 1,
                      child: Text(
                        "SALE",
                        style: const TextStyle(
                            color: const Color(0xff1c1b1b),
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ]),
            ],
          )),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                Khalanga(),
                const SizedBox(height: 20),
                HeadingTextWidget(st: "TRENDING THIS MONTH"),
                const SizedBox(height: 5),
                const Text(
                  "kHALANGA",
                  style: TextStyle(
                      color: Color(0xff1c1b1b),
                      fontSize: 10,
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),

                Card(elevation: 10, child: SecondGrid()),
                const SizedBox(height: 20),
                HeadingTextWidget(st: "SKY EDITION"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 350,
                  child: Products(productss: products.productList1),
                ),
                const SizedBox(height: 30),
                Button(st: "VIEW ALL PRODUCTS", pList: products.productList1),
                const SizedBox(height: 40),
                PosterSection(),
                const SizedBox(height: 20),
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
                const SizedBox(height: 20),
                Button(
                    st: "VIEW ALL MESH EDITION SNEAKERS",
                    pList: products.productList2),

                const SizedBox(height: 30),
                Column(
                  children: [
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
                  "HOW OTHERS ARE WALKING THEIR JOURNEYS",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                CustomerSection(),
                //
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
