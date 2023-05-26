import 'package:bathu/models/productList.dart';
import 'package:flutter/material.dart';

import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../pages/productDetails.dart';

class Products extends StatefulWidget {
  var products;
  Products({required this.products});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.products.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          ProductName: widget.products[index]['name'],
          ProductPicture: widget.products[index]['picture'],
          Price: widget.products[index]['price'],
          Review: widget.products[index]['reviews'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  double value = 5.0;
  var ProductName;
  var ProductPicture;
  var Review;
  var Price;
  SingleProduct(
      {Key? key,
      this.ProductPicture,
      this.ProductName,
      this.Review,
      this.Price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Hero(
        tag: ProductName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetails(),
              ),
            ),
            child: GridTile(
              footer: Container(
                height: 60,
                color: Colors.white70,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      ProductName,
                      style: const TextStyle(
                          fontFamily: 'Gilroy-Bold.ttf',
                          fontSize: 8,
                          color: Color(0xff1c1b1b),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    const SizedBox(height: 3),
                    Center(
                      child: Row(
                        children: [
                          const SizedBox(width: 45),
                          SmoothStarRating(
                              allowHalfRating: false,
                              onRatingChanged: (v) {},
                              starCount: 5,
                              rating: 5.0,
                              size: 12.0,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star,
                              color: Colors.yellow,
                              borderColor: Colors.black,
                              spacing: 0.0),
                          Text(
                            ' $Review Reviews',
                            style: const TextStyle(
                                fontFamily: 'Gilroy-Bold.ttf',
                                fontSize: 9,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      'R $Price ZAR',
                      style: const TextStyle(
                          fontFamily: 'Gilroy-Bold.ttf',
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    )
                  ],
                ),
              ),
              child: Image.asset(ProductPicture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
