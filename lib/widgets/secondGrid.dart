import 'package:flutter/material.dart';

class SecondGrid extends StatefulWidget {
  @override
  State<SecondGrid> createState() => _SecondGridState();
}

class _SecondGridState extends State<SecondGrid> {
  List<String> images = [
    "assets/images/imageTwo1.jpg",
    "assets/images/imageTwo2.jpg",
    "assets/images/imageTwo3.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              height: 400,
              color: Colors.blue,
              width: double.infinity,
              child: Stack(children: [
                Image.asset(
                  images[index],
                  fit: BoxFit.fill,
                  width: 400,
                ),
                Column(
                  children: [
                    SizedBox(height: 300),
                    SizedBox(width: 200),
                    ElevatedButton(
                      child: Text(
                        "VIEW PRODUCT",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontFamily: 'Gilroy-Regular.ttf'),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white70,
                        onPrimary: Colors.black87,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 23.0, vertical: 18.0),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          );
        },
      ),
    );
    ;
  }
}
