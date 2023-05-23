import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String st;
  Button({required this.st});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        st,
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontFamily: 'Gilroy-Regular.ttf'),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Color(0xff1c1b1b),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(1),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      ),
    );
  }
}
