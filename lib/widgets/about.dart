import 'package:bathu/models/aboutList.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  State<About> createState() => _AboutState();

  var ab = AboutList();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 368,
      alignment: Alignment.center,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Stack(children: [
            Image.asset(
              (widget.ab.List1[0]['picture']).toString(),
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.exclusion,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    (widget.ab.List1[0]['firstLine']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['SecondLine']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['ThirdLine']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['firstLine']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['paragraph1']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['paragraph2']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['paragraph3']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['paragraph4']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['secparagraph1']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['secparagraph2']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['paragraph1']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['secparagraph3']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['secparagraph4']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['thirdparagraph1']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['thirdparagraph2']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['thirdparagraph3']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    (widget.ab.List1[0]['thirdparagraph4']).toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
      height: 350,
    );
  }
}
