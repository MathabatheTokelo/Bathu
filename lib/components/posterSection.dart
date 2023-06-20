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
      image: const AssetImage("assets/images/carousel/4.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/carousel/2.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/carousel/1.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/carousel/3.png"),
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
                selectedDotColor: const Color(0xff1c1b1b),
                items: itemList,
                height: 230,
                subHeight: 0,
                width: 410,
                autoplay: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
