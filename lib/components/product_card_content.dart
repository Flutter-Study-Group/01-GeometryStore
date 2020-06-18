import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geometry/constants.dart';
import 'package:geometry/components/styled_button.dart';
// import 'package:charcode/charcode.dart';

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
      // mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
            flex: 7,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Image.asset(productImage),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(productTitle, style: kH1TextStyle),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(productDescription, style: kProductColorTitle),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            '$productPrice',
            style: kPriceTextStyle,
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: StyleButton(
                    // height: 70.0,
                    onPressed: () {},
                    buttonChild: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 70.0,
                  child: RaisedButton(
                    elevation: 10.0,
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
