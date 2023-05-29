import 'package:flutter/material.dart';

class HistoryText extends StatelessWidget {
  String str;
  HistoryText({required this.str});
  @override
  Widget build(BuildContext context) {
    return Text(
      str,
      style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Gilroy-Bold',
          fontWeight: FontWeight.bold,
          fontSize: 9,
          letterSpacing: 1.3),
    );
  }
}
