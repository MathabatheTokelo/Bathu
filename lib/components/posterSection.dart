import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

class PosterSection extends StatefulWidget {
  @override
  State<PosterSection> createState() => _PosterSectionState();
}

class _PosterSectionState extends State<PosterSection> {
  @override
  var itemList = [
    CarouselItem(
      image: const AssetImage("assets/images/headerOne4.png"),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Color.fromARGB(255, 255, 168, 68).withOpacity(1),
            Color.fromARGB(255, 43, 58, 37).withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/headerOne2.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/headerOne1.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/headerOne3.png"),
      onImageTap: (i) {},
    )
  ];

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: CustomCarouselSlider(
                dotSpacing: 5,
                selectedDotColor: Color(0xff1c1b1b),
                items: itemList,
                height: 350,
                subHeight: 0,
                width: 400,
                autoplay: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
