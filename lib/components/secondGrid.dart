import 'package:bathu/models/productList.dart';
import 'package:flutter/material.dart';

import '../pages/fullProducts.dart';

class SecondGrid extends StatefulWidget {
  @override
  var p = ProductList();
  SecondGrid();
  State<SecondGrid> createState() => _SecondGridState();
}

class GridClass {
  String name;
  String picture;
  var nextPage;
  String slogan;

  GridClass(
      {required this.name,
      required this.picture,
      required this.slogan,
      this.nextPage});
}

class _SecondGridState extends State<SecondGrid> {
  var one = GridClass(
      name: "SKY",
      picture: "assets/images/secondCarousel/1.jpg",
      slogan: "BEYOND YOUR LIMIT",
      nextPage: " ");
  var two = GridClass(
      name: "SLIDER - MOONLIGHT",
      picture: "assets/images/secondCarousel/2.jpg",
      slogan: "ORIGINAL JOY",
      nextPage: " ");
  var three = GridClass(
      name: "JOURNEY REDEFINED",
      picture: "assets/images/secondCarousel/3.jpg",
      slogan: "AUTUMN BREEZE",
      nextPage: " ");

  late var llist = [one, two, three];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: PageView.builder(
        itemCount: llist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              height: 430,
              width: double.infinity,
              child: Center(
                child: Stack(children: [
                  Image.asset(
                    llist[index].picture,
                    fit: BoxFit.fill,
                    width: 368,
                    height: 480,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 250),
                      Text(
                        llist[index].slogan,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy-Bold',
                            letterSpacing: 2),
                      ),
                      Text(
                        llist[index].name,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy-Bold',
                            letterSpacing: 2),
                      ),
                      const SizedBox(height: 50),
                      const SizedBox(width: 200),
                      ElevatedButton(
                        onPressed: () {
                          if (index == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FullProducts(
                                        p: widget.p.productList1,
                                      )),
                            );
                          } else if (index == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FullProducts(
                                        p: widget.p.productList4,
                                      )),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FullProducts(
                                        p: widget.p.productList3,
                                      )),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white70,
                          onPrimary: Colors.black87,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 23.0, vertical: 18.0),
                        ),
                        child: const Text(
                          "VIEW PRODUCT",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontFamily: 'Gilroy-Regular.ttf'),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          );
        },
      ),
    );
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: PageView.builder(
        itemCount: llist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              height: 430,
              width: double.infinity,
              child: Center(
                child: Stack(children: [
                  Image.asset(
                    llist[index].picture,
                    fit: BoxFit.fill,
                    width: 368,
                    height: 480,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 250),
                      Text(
                        llist[index].slogan,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy-Bold',
                            letterSpacing: 2),
                      ),
                      Text(
                        llist[index].name,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy-Bold',
                            letterSpacing: 2),
                      ),
                      const SizedBox(height: 50),
                      const SizedBox(width: 200),
                      ElevatedButton(
                        onPressed: () {
                          if (index == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FullProducts(
                                        p: widget.p.productList1,
                                      )),
                            );
                          } else if (index == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FullProducts(
                                        p: widget.p.productList4,
                                      )),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FullProducts(
                                        p: widget.p.productList3,
                                      )),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white70,
                          onPrimary: Colors.black87,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 23.0, vertical: 18.0),
                        ),
                        child: const Text(
                          "VIEW PRODUCT",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontFamily: 'Gilroy-Regular.ttf'),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
