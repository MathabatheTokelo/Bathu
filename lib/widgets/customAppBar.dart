import 'package:bathu/pages/cart.dart';
import 'package:bathu/pages/profile.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

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
            children: const [
              Icon(Icons.menu, color: Colors.grey, size: 25),
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
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                ),
                child: const Icon(Icons.person,
                    color: Color(0xff1c1b1b), size: 20),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () {},
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
