import 'package:flutter/material.dart';
import 'package:geometry/components/product_card_content.dart';
import 'package:geometry/constants.dart';
import 'package:geometry/models/product.dart';
import 'package:geometry/components/product_card.dart';

ProductList products = new ProductList();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        elevation: 0.0,
        title: Text(
          'GEOMETRY',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Trends',
                textAlign: TextAlign.start,
                style: kCategoryTextStyle,
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              width: double.infinity,
              height: 700.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
                child: ListView.builder(
                    itemCount: products.productList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var productList = products.productList;
                      return ProductCard(
                        onPressed: () {},
                        cardContent: ProductCardContent(
                          productImage: productList[index].productImage,
                          productTitle: productList[index].productTitle,
                          productDescription:
                              productList[index].productDescription,
                          productPrice: productList[index].productPrice,
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
