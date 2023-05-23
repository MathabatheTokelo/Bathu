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
    },
    {
      "name": "SKY EDITION - GREY & BLACK",
      "picture": "assets/images/imageOne4.png",
      "reviews": 16,
      "price": 1200,
    },
    {
      "name": "SKY EDITION - YELLOW",
      "picture": "assets/images/imageOne5.png",
      "reviews": 5,
      "price": 1200,
    },
    {
      "name": "SKY EDITION - ARMY GREEN",
      "picture": "assets/images/imageOne6.png",
      "reviews": 6,
      "price": 1200,
    },
    {
      "name": "SKY EDITION - SNOW WHITE",
      "picture": "assets/images/imageOne7.png",
      "reviews": 8,
      "price": 1200,
    },
    {
      "name": "SKY EDITION - NUDE PINK",
      "picture": "assets/images/imageOne8.png",
      "reviews": 5,
      "price": 1200,
    },
    {
      "name": "SKY EDITION - NAVY BLUE",
      "picture": "assets/images/imageOne9.png",
      "reviews": 1,
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
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  elevation: 5,
                  child: ListTile(
                    leading: Column(
                      children: [
                        SizedBox(height: 3),
                        Text(
                          ProductName,
                          style: const TextStyle(
                              fontFamily: 'Gilroy-Bold.ttf',
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2),
                        ),
                        SizedBox(height: 3),
                        Center(
                          child: Text(
                            ' $Review Review',
                            style: TextStyle(
                                fontFamily: 'Gilroy-Bold.ttf',
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                          ),
                        ),
                        SizedBox(height: 3),
                        Center(
                          child: Text(
                            'R $Price ZAR',
                            style: TextStyle(
                                fontFamily: 'Gilroy-Bold.ttf',
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3),
                          ),
                        ),
                      ],
                    ),
                  ),
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
