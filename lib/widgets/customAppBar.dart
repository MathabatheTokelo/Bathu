import 'package:bathu/pages/cart.dart';

import 'package:bathu/pages/profile.dart';
import 'package:bathu/widgets/button.dart';
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
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gilroy-Bold',
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
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text(
                                "Email",
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                            textSelectionTheme: TextSelectionThemeData(
                                selectionHandleColor: Colors.black,
                                selectionColor: Colors.black)),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("Password")),
                        ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {},
                        child: Text("Don't have a Account? Register",
                            style: TextStyle(color: Colors.blue)),
                      ),
                      SizedBox(height: 10),
                      Center(child: Button(st: "LOGIN"))
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });

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
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy-Bold',
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
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                label: Text(
                                  "Email",
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: Theme.of(context).copyWith(
                              textSelectionTheme: TextSelectionThemeData(
                                  selectionHandleColor: Colors.black,
                                  selectionColor: Colors.black)),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                label: Text("Password")),
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {},
                          child: Text("Don't have a Account? Register",
                              style: TextStyle(color: Colors.blue)),
                        ),
                        SizedBox(height: 10),
                        Center(child: Button(st: "LOGIN"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
