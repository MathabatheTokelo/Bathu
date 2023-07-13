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
        image: const AssetImage("assets/images/testimonials/1.png"),
        onImageTap: (i) {},
        boxDecoration: BoxDecoration(color: Colors.white)),
    CarouselItem(
      image: const AssetImage("assets/images/testimonials/2.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/testimonials/3.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/testimonials/4.png"),
      onImageTap: (i) {},
    )
  ];

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 350,
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
                  height: 350,
                  subHeight: 0,
                  unselectedDotWidth: 0,
                  width: 400,
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
