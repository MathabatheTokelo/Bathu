import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String st;

  Button({Key? key, required this.st}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
