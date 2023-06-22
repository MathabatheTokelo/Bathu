import 'package:bathu/pages/cart.dart';

import 'package:bathu/pages/profile.dart';
import 'package:bathu/widgets/button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final Function draw;

  CustomAppBar({required this.draw});

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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Icon(Icons.menu, color: Colors.grey, size: 25),
              onTap: () {
                {
                  widget.draw();
                }
              },
            ),
          ],
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
                  aleLog(context);
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

void aleReg(var context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.all(10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 350,
                height: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Column(
                  children: [
                    Text(
                      "REGISTER",
                      style: TextStyle(
                        color: Color(0xff1c1b1b),
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy-Bold',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Please fill in the information below:",
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: .3,
                        color: Color(0xff1c1b1b),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 160,
                      child: SingleChildScrollView(
                        child: Column(children: [
                          SizedBox(height: 15),
                          Theme(
                            data: Theme.of(context).copyWith(
                                textSelectionTheme: TextSelectionThemeData(
                                    selectionHandleColor: Colors.black,
                                    selectionColor: Colors.black)),
                            child: SizedBox(
                              width: 335,
                              height: 50,
                              child: TextFormField(
                                cursorColor: Color(0xff1c1b1b),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    label: Text(
                                      "First Name",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0,
                                          fontFamily: 'Gilroy-Regular.ttf'),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Theme(
                            data: Theme.of(context).copyWith(
                                textSelectionTheme: TextSelectionThemeData(
                                    selectionHandleColor: Colors.black,
                                    selectionColor: Colors.black)),
                            child: SizedBox(
                              width: 335,
                              height: 50,
                              child: TextFormField(
                                cursorColor: Color(0xff1c1b1b),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    label: Text(
                                      "Second Name",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0,
                                          fontFamily: 'Gilroy-Regular.ttf'),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Theme(
                            data: Theme.of(context).copyWith(
                                textSelectionTheme: TextSelectionThemeData(
                                    selectionHandleColor: Colors.black,
                                    selectionColor: Colors.black)),
                            child: SizedBox(
                              width: 335,
                              height: 50,
                              child: TextFormField(
                                cursorColor: Color(0xff1c1b1b),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    label: Text(
                                      "Email",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0,
                                          fontFamily: 'Gilroy-Regular.ttf'),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Theme(
                            data: Theme.of(context).copyWith(
                                textSelectionTheme: TextSelectionThemeData(
                                    selectionHandleColor: Colors.black,
                                    selectionColor: Colors.black)),
                            child: SizedBox(
                              width: 335,
                              height: 50,
                              child: TextFormField(
                                cursorColor: Color(0xff1c1b1b),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    label: Text(
                                      "Password",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0,
                                          fontFamily: 'Gilroy-Regular.ttf'),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                        ]),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff1c1b1b),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 128.0, vertical: 1.0),
                      ),
                      child: Center(
                        child: Text(
                          "Create Account",
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontFamily: 'Gilroy-Regular.ttf'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}

void aleLog(var context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.all(10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SingleChildScrollView(
                child: Container(
                  width: 350,
                  height: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                  child: Column(
                    children: [
                      Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gilroy-Bold',
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Please enter your e-mail and password:",
                        style: TextStyle(
                          fontSize: 13,
                          letterSpacing: .3,
                          color: Color(0xff1c1b1b),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Theme(
                        data: Theme.of(context).copyWith(
                            textSelectionTheme: TextSelectionThemeData(
                                selectionHandleColor: Colors.black,
                                selectionColor: Colors.black)),
                        child: SizedBox(
                          width: 335,
                          height: 50,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0,
                                    fontFamily: 'Gilroy-Regular.ttf'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                            textSelectionTheme: TextSelectionThemeData(
                                selectionHandleColor: Colors.black,
                                selectionColor: Colors.black)),
                        child: SizedBox(
                          width: 335,
                          height: 50,
                          child: TextFormField(
                            cursorColor: Color(0xff1c1b1b),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                label: Text(
                                  "Password",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0,
                                      fontFamily: 'Gilroy-Regular.ttf'),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff1c1b1b),
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(1),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 128.0, vertical: 15.0),
                          ),
                          child: Text(
                            "LOGIN",
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                fontFamily: 'Gilroy-Regular.ttf'),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have a account? ",
                                style: TextStyle(
                                  fontSize: 13,
                                  letterSpacing: .3,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  aleReg(context);
                                },
                                child: Text("Create on",
                                    style: TextStyle(
                                      fontSize: 13,
                                      letterSpacing: .3,
                                      color: Color(0xff1c1b1b),
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
