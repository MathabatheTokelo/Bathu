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
    return SizedBox(
      height: 324,
      width: double.infinity,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: SingleChildScrollView(
                child: Container(
                  width: 350,
                  alignment: Alignment.center,
                  height: 366,
                  child: Column(
                    children: [
                      Stack(children: [
                        Image.asset(
                          (widget.ab.List1[index]['picture']).toString(),
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.exclusion,
                        ),
                        SizedBox(
                          width: 365,
                          child: Column(
                            children: [
                              const SizedBox(height: 50),
                              Text(
                                (widget.ab.List1[index]['firstLine'])
                                    .toString(),
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
                                (widget.ab.List1[index]['SecondLine'])
                                    .toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gilroy-Bold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 3),
                              ),
                              Text(
                                (widget.ab.List1[index]['ThirdLine'])
                                    .toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gilroy-Bold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 3),
                              ),
                              const SizedBox(height: 20),
                              HistoryText(
                                  str: (widget.ab.List1[index]['paragraph1'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]['paragraph2'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]['paragraph3'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]['paragraph4'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]['secparagraph1'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]['secparagraph2'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]['secparagraph3'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]['secparagraph4'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]['secparagraph5'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]
                                          ['thirdparagraph1'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]
                                          ['thirdparagraph2'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]
                                          ['thirdparagraph3'])
                                      .toString()),
                              HistoryText(
                                  str: (widget.ab.List1[index]
                                          ['thirdparagraph4'])
                                      .toString()),
                            ],
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
