import 'package:bathu/widgets/products.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bathu());
}

class Bathu extends StatelessWidget {
  Bathu({Key? key}) : super(key: key);

  List<String> images = [
    "assets/images/headerOne2.png",
    "assets/images/headerOne1.png",
    "assets/images/headerOne3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gilroy-Bold'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 20,
          title: Center(
            child: Text(
              "WISHING YOU ALL THE BEST FOR 2023 | FIND A STORE | EMAIL US ON INFO@BATHU.CO.ZA",
              style: TextStyle(
                color: Colors.white,
                fontSize: 8.3,
                fontWeight: FontWeight.bold,
                fontFamily: 'Gilroy-Bold',
              ),
            ),
          ),
          elevation: 20,
        ),
        body: ListView(children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 13.5,
                  ),
                  InkWell(
                    onTap: () {
                      Drawer(
                        child: ListView(
                          children: [
                            Text("Tokelo"),
                          ],
                        ),
                      );
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 130,
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 240,
                      width: 220,
                    ),
                  ),
                  Icon(Icons.person, color: Colors.black, size: 23),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(Icons.search, color: Colors.black, size: 23),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(Icons.shopping_cart, color: Colors.black, size: 23),
                ],
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: SizedBox(
                        height: 400,
                        width: double.infinity,
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "SKY EDITION",
                style: TextStyle(
                  fontFamily: 'Gilroy-Regular.ttf',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4.0,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                height: 320,
                child: Products(),
              ),
            ],
          ),
        ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
