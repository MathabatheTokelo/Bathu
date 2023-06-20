import 'package:bathu/pages/fullProducts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String st;
  var pList;

  Button({required this.st, this.pList});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FullProducts(
                    p: pList,
                  )),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff1c1b1b),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      ),
      child: Text(
        st,
        style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontFamily: 'Gilroy-Regular.ttf'),
      ),
    );
  }
}
