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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
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
            SizedBox(height: 80.0),
            Container(
              width: double.infinity,
              height: 700.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: ListView.builder(
                    itemCount: products.productList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var productList = products.productList;
                      return ProductCard(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => DetailPage(
                                productTitle: productList[index].productTitle,
                                productDescription:
                                    productList[index].productDescription,
                                productImage: productList[index].productImage,
                                productPrice: productList[index].productPrice,
                              ),
                            ),
                          );
                        },
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
