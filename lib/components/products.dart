import 'package:bathu/models/productList.dart';
import 'package:flutter/material.dart';

import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../pages/productDetails.dart';

class Products extends StatefulWidget {
  var productss;
  Products({required this.productss});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.productss.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          ProductName: widget.productss[index]['name'],
          ProductPicture1: widget.productss[index]['picture1'],
          ProductPicture2: widget.productss[index]['picture2'],
          ProductPicture3: widget.productss[index]['picture3'],
          Price: widget.productss[index]['price'],
          Review: widget.productss[index]['reviews'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  double value = 5.0;
  var ProductName;
  var ProductPicture1;
  var ProductPicture2;
  var ProductPicture3;
  var Review;
  var Price;
  SingleProduct(
      {Key? key,
      this.ProductPicture1,
      this.ProductPicture2,
      this.ProductPicture3,
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
                builder: (context) => ProductDetails(
                    imageUrl1: ProductPicture1,
                    imageUrl2: ProductPicture2,
                    imageUrl3: ProductPicture3,
                    itemName: ProductName,
                    itemPrice: Price,
                    itemDescription: "Des"),
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
              child: Image.asset(ProductPicture1, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
