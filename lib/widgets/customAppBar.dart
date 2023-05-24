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
            const Drawer();
          },
          child: const Icon(Icons.menu, color: Colors.grey, size: 25),
        ),
        const SizedBox(width: 90),
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
        const SizedBox(width: 55),
        InkWell(
          onTap: () {},
          child: const Icon(Icons.person, color: Color(0xff1c1b1b), size: 20),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {},
          child: const Icon(Icons.search, color: Color(0xff1c1b1b), size: 20),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {},
          child: const Icon(Icons.shopping_cart,
              color: Color(0xff1c1b1b), size: 20),
        ),
      ],
    );
  }
}
