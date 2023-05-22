import 'package:flutter/material.dart';

class SecondGrid extends StatelessWidget {
  var _list = [
    {
      "slogan": " ",
      "picture": "assets/images/imageTwo1.jpg",
      "name": "SKY EDITION ",
      "AppPage": ""
    },
    {
      "slogan": " ",
      "picture": "assets/images/imageTwo2.jpg",
      "name": "SKY EDITION ",
      "AppPage": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 13,
            ),
            Container(
              width: 190,
              child: Card(
                elevation: 5,
                child: Image.asset("assets/images/imageTwo1.jpg",
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 190,
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/imageTwo2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 200,
          child: Card(
            elevation: 5,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/imageTwo2.jpg ",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
