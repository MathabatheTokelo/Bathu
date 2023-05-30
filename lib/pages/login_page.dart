import 'package:bathu/widgets/customAppBar.dart';
import 'package:bathu/widgets/headingTextWidget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
      body: Center(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 150,
            ),
            Text(
              "LOGIN",
              style: const TextStyle(
                fontFamily: 'Gilroy-Regular.ttf',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 5,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Please enter your e-mail and password:",
              style: const TextStyle(
                fontFamily: 'Gilroy-Regular.ttf',
                fontWeight: FontWeight.bold,
                fontSize: 12,
                letterSpacing: 0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                    labelText: "Email",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0.0))),
                    labelStyle: TextStyle(
                        color: Color.fromARGB(255, 129, 126, 126),
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 0)),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0.0))),
                    labelStyle: TextStyle(
                        color: Color.fromARGB(255, 129, 126, 126),
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 0)),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
