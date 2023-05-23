import 'package:flutter/material.dart';

class PosterSection extends StatefulWidget {
  @override
  State<PosterSection> createState() => _PosterSectionState();
}

class _PosterSectionState extends State<PosterSection> {
  @override
  List<String> images = [
    "assets/images/headerOne4.png",
    "assets/images/headerOne2.png",
    "assets/images/headerOne1.png",
    "assets/images/headerOne3.png"
  ];

  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: SizedBox(
              height: 400,
              width: double.infinity,
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
