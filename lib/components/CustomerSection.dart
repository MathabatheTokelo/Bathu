import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

class CustomerSection extends StatefulWidget {
  @override
  State<CustomerSection> createState() => _CustomerSectionState();
}

class _CustomerSectionState extends State<CustomerSection> {
  @override
  var itemList = [
    CarouselItem(
        image: const AssetImage("assets/images/imageFour1.png"),
        onImageTap: (i) {},
        boxDecoration: BoxDecoration(color: Colors.white)),
    CarouselItem(
      image: const AssetImage("assets/images/imageFour2.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/imageFour3.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/imageFour4.png"),
      onImageTap: (i) {},
    )
  ];

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: CustomCarouselSlider(
                  dotSpacing: 4,
                  unselectedDotHeight: 0,
                  autoplayDuration: Duration(seconds: 4),
                  selectedDotColor: const Color(0xff1c1b1b),
                  items: itemList,
                  height: 250,
                  subHeight: 0,
                  unselectedDotWidth: 0,
                  width: 350,
                  autoplay: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
