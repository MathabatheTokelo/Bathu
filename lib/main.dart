import 'package:bathu/widgets/button.dart';
import 'package:bathu/widgets/customAppBar.dart';
import 'package:bathu/widgets/headingTextWidget.dart';
import 'package:bathu/widgets/posterSection.dart';
import 'package:bathu/widgets/products.dart';
import 'package:bathu/widgets/secondGrid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bathu());
}

class Bathu extends StatelessWidget {
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
                fontSize: 7.5,
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
                padding: EdgeInsets.all(0),
                child: Column(children: [
                  PosterSection(),
                  const SizedBox(height: 20),
                  HeadingTextWidget(st: "SKY EDITION"),
                  const SizedBox(height: 10),
                  SizedBox(height: 350, child: Products()),
                  const SizedBox(height: 30),
                  Button(st: "VIEW ALL PRODUCTS"),
                  const SizedBox(height: 30),
                  Column(
                    children: [SecondGrid(), SecondGrid()],
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
                  const SizedBox(height: 17),
                  HeadingTextWidget(st: "MESH EDITION - AFRICA'S SNEAKER."),
                  const SizedBox(height: 10),
                  SizedBox(height: 350, child: Products()),
                  const SizedBox(height: 30),
                  Button(st: "VIEW ALL MESH EDITION SNEAKERS"),
                  const SizedBox(height: 30),
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
