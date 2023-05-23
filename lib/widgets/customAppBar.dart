import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 13.5),
        InkWell(
          onTap: () {
            Drawer();
          },
          child: const Icon(Icons.menu, color: Colors.grey, size: 25),
        ),
        const SizedBox(width: 80),
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
        const SizedBox(width: 45),
        InkWell(
          onTap: () {},
          child: Icon(Icons.person, color: Color(0xff1c1b1b), size: 20),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
            onTap: () {},
            child: Icon(Icons.search, color: Color(0xff1c1b1b), size: 20)),
        SizedBox(
          width: 5,
        ),
        InkWell(
            onTap: () {},
            child:
                Icon(Icons.shopping_cart, color: Color(0xff1c1b1b), size: 20)),
      ],
    );
  }
}
