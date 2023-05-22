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
              width: 1,
            ),
            Container(
              width: 190,
              height: 244,
              child: Card(
                elevation: 5,
                child: Image.asset("assets/images/imageTwo1.jpg",
                    fit: BoxFit.cover, alignment: Alignment.bottomCenter),
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Container(
              width: 199,
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
        SizedBox(height: 2),
        Container(
          width: 210,
          height: 244,
          child: Card(
            child: Image.asset(
              "assets/images/imageTwo3.jpg",
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
            elevation: 10,
          ),
        ),
        SizedBox(
          height: 400,
        )
      ],
    );
  }
}
