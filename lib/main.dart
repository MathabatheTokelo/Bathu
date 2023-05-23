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
                child: Column(children: [
                  PosterSection(),
                  const SizedBox(height: 20),
                  HeadingTextWidget(st: "SKY EDITION"),
                  const SizedBox(height: 2),
                  SizedBox(height: 350, child: Products()),
                  const SizedBox(height: 30),
                  Button(st: "VIEW ALL PRODUCTS"),
                  SizedBox(height: 30),
                  SecondGrid(),
                  SizedBox(height: 30),
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
