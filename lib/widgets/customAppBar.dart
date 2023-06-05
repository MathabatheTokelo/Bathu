import 'package:bathu/pages/cart.dart';

import 'package:bathu/pages/profile.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 13.5),
        InkWell(
          onTap: () {
            const Drawer();
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Icon(Icons.menu, color: Colors.grey, size: 25),
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ],
          ),
        ),
        const SizedBox(width: 70),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fill,
                alignment: Alignment.center,
                height: 100,
                width: 145,
              ),
            ),
          ],
        ),
        const SizedBox(width: 20),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          scrollable: true,
                          title: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gilroy-Bold',
                            ),
                          ),
                          content: Stack(
                            children: [
                              Positioned(
                                right: -15,
                                left: -15,
                                child: InkResponse(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: CircleAvatar(
                                    radius: 12,
                                    child: Icon(
                                      Icons.close,
                                      size: 9,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                              ),
                              Form(
                                  child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 60,
                                  )
                                ],
                              ))
                            ],
                          ),
                        );
                      });
                },
                child: const Icon(Icons.person,
                    color: Color(0xff1c1b1b), size: 20),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                ),
                child: const Icon(Icons.search,
                    color: Color(0xff1c1b1b), size: 20),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                ),
                child: const Icon(Icons.shopping_cart,
                    color: Color(0xff1c1b1b), size: 20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
