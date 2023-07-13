import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Khalanga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 270,
      child: Stack(children: [
        Image.asset(
          "assets/images/bathu_khalanga.png",
          fit: BoxFit.fill,
          height: 270,
          width: double.infinity,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 110),
                Text(
                  "Introducing KHALANGA",
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy-Bold',
                      letterSpacing: 2),
                ),
                SizedBox(height: 5),
                Text(
                  "A new collaboration between Bathu and Theo Baloyi.",
                  style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy-Bold',
                      letterSpacing: 2),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
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
                    "SHOP NOW",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontFamily: 'Gilroy-Regular.ttf'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
