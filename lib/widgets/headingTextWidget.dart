import 'package:flutter/material.dart';

class HeadingTextWidget extends StatelessWidget {
  var st;
  HeadingTextWidget({this.st});
  @override
  Widget build(BuildContext context) {
    return Text(
      st,
      style: TextStyle(
        fontFamily: 'Gilroy-Regular.ttf',
        fontWeight: FontWeight.bold,
        letterSpacing: 4.0,
      ),
    );
  }
}
