import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "SKY EDITION - RED",
      "picture": "assets/images/imageOne1.png",
      "reviews": 14,
      "price": 1200,
    },
    {
      "name": "SKY EDITION - MIDNIGHT BLACK",
      "picture": "assets/images/imageOne2.png",
      "reviews": 31,
      "price": 1200,
    },
    {
      "name": "SKY EDITION - LIGHT BLUE",
      "picture": "assets/images/imageOne3.png",
      "reviews": 12,
      "price": 1200,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          ProductName: productList[index]['name'],
          ProductPicture: productList[index]['picture'],
          Price: productList[index]['price'],
          Review: productList[index]['reviews'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  var ProductName;
  var ProductPicture;
  var Review;
  var Price;
  SingleProduct(
      {this.ProductPicture, this.ProductName, this.Review, this.Price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: ProductName,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(ProductName,
                        style: TextStyle(
                            fontFamily: 'Gilroy-Bold.ttf',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5)),
                  ),
                ),
                child: Image.asset(
                  ProductPicture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
