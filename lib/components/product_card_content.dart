import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geometry/constants.dart';

class ProductCardContent extends StatelessWidget {
  ProductCardContent({
    @required this.productTitle,
    @required this.productImage,
    @required this.productDescription,
    @required this.productPrice,
  });

  final String productImage;
  final String productTitle;
  final String productDescription;
  final String productPrice;
  // final Color productColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                productImage,
              ),
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(productTitle, style: kH1TextStyle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(productDescription, style: kProductColorTitle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text('\$$productPrice', style: kPriceTextStyle,),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: RaisedButton(
                    color: Color(0xFF313131),
                    onPressed: () {
                      // go to product detail page
                    },
                    child: Icon(FontAwesomeIcons.plus),
                  ),
                ),
              ),
              SizedBox(width: 15.0),
              RaisedButton(
                onPressed: () {
                  // add to wishlist
                },
                color: Color(0xFF313131),
                shape: CircleBorder(),
                child: Icon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
