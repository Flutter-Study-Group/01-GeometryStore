import 'package:flutter/material.dart';
import 'package:geometry/components/product_card_content.dart';
import 'package:geometry/constants.dart';
import 'package:geometry/models/product.dart';
import 'package:geometry/components/product_card.dart';
import 'package:geometry/screens/detail_page.dart';
import 'package:geometry/components/nav_bar.dart';

ProductList products = new ProductList();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void navigateToProductDetailPage(
      String productTitle,
      String productDescription,
      String productImage,
      String productPrice,
      Color productColor) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => DetailPage(
          productTitle: productTitle,
          productDescription: productDescription,
          productImage: productImage,
          productPrice: productPrice,
          productColor: productColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'Trends',
                textAlign: TextAlign.start,
                style: kCategoryTextStyle,
              ),
            ),
            SizedBox(height: 80.0),
            Container(
              width: double.infinity,
              height: 620,
              child: ListView.builder(
                  itemCount: products.productList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var productList = products.productList;
                    return ProductCard(
                      onPressed: () {
                        navigateToProductDetailPage(
                            productList[index].productTitle,
                            productList[index].productDescription,
                            productList[index].productImage,
                            productList[index].productPrice,
                            productList[index].productColor);
                      },
                      cardContent: ProductCardContent(
                        productImage: productList[index].productImage,
                        productTitle: productList[index].productTitle,
                        productDescription:
                            productList[index].productDescription,
                        productPrice: productList[index].productPrice,
                        productColor: productList[index].productColor,
                        onPressed: () {
                          navigateToProductDetailPage(
                              productList[index].productTitle,
                              productList[index].productDescription,
                              productList[index].productImage,
                              productList[index].productPrice,
                              productList[index].productColor);
                        },
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
