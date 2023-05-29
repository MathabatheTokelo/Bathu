import 'package:bathu/models/history.dart';
import 'package:bathu/widgets/historyText.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  State<About> createState() => _AboutState();

  var ab = AboutList();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 17,
      child: Container(
        width: 368,
        alignment: Alignment.center,
        height: 350,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Stack(children: [
              Image.asset(
                (widget.ab.List1[0]['picture']).toString(),
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.exclusion,
              ),
              SizedBox(
                width: 365,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      (widget.ab.List1[0]['firstLine']).toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.bold,
                          fontSize: 8,
                          letterSpacing: 3),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Text(
                      (widget.ab.List1[0]['SecondLine']).toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 3),
                    ),
                    Text(
                      (widget.ab.List1[0]['ThirdLine']).toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 3),
                    ),
                    const SizedBox(height: 20),
                    HistoryText(
                        str: (widget.ab.List1[0]['paragraph1']).toString()),
                    HistoryText(
                        str: (widget.ab.List1[0]['paragraph2']).toString()),
                    HistoryText(
                        str: (widget.ab.List1[0]['paragraph3']).toString()),
                    HistoryText(
                        str: (widget.ab.List1[0]['paragraph4']).toString()),
                    HistoryText(
                        str: (widget.ab.List1[0]['secparagraph1']).toString()),
                    HistoryText(
                        str: (widget.ab.List1[0]['secparagraph2']).toString()),
                    HistoryText(
                        str: (widget.ab.List1[0]['secparagraph3']).toString()),
                    HistoryText(
                        str: (widget.ab.List1[0]['secparagraph4']).toString()),
                    HistoryText(
                        str:
                            (widget.ab.List1[0]['thirdparagraph1']).toString()),
                    HistoryText(
                        str:
                            (widget.ab.List1[0]['thirdparagraph2']).toString()),
                    HistoryText(
                        str:
                            (widget.ab.List1[0]['thirdparagraph3']).toString()),
                    HistoryText(
                        str:
                            (widget.ab.List1[0]['thirdparagraph4']).toString()),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
