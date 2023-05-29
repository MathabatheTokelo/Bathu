import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadingTextWidget extends StatelessWidget {
  var st;
  HeadingTextWidget({Key? key, this.st}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      st,
      style: const TextStyle(
        fontFamily: 'Gilroy-Regular.ttf',
        fontWeight: FontWeight.bold,
        letterSpacing: 1.4,
      ),
    );
  }
}
