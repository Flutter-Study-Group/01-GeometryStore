import 'package:flutter/material.dart';
import 'package:geometry/components/nav_bar.dart';
import 'package:geometry/components/styled_button.dart';
import 'package:geometry/constants.dart';
import 'package:geometry/components/custom_radio.dart';
import 'package:geometry/models/product.dart';

class DetailPage extends StatefulWidget {
  DetailPage(
      {Key key,
      @required this.productTitle,
      @required this.productDescription,
      @required this.productImage,
      @required this.productPrice,
      @required this.productColor})
      : super(key: key);

  final String productTitle;
  final String productDescription;
  final String productImage;
  final String productPrice;
  final Color productColor;

  @override
  _DetailPageState createState() => _DetailPageState();
}

enum Colours { white, grey, black }

class _DetailPageState extends State<DetailPage> {
  Colours selectedRadioColor;
  Product product = Product();

  bool _whiteRadioselected = false;
  bool _greyRadioselected = false;
  bool _blackRadioselected = false;

  void _handleWhichRadioSelected(int index) {
    setState(() {
      if (index == 0) {
        _whiteRadioselected = true;
        _greyRadioselected = false;
        _blackRadioselected = false;
        updateUI(index, widget.productTitle);
      } else if (index == 1) {
        _greyRadioselected = true;
        _whiteRadioselected = false;
        _blackRadioselected = false;
        updateUI(index, widget.productTitle);
      } else {
        _blackRadioselected = true;
        _whiteRadioselected = false;
        _greyRadioselected = false;
        updateUI(index, widget.productTitle);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    product = Product(
        productTitle: widget.productTitle,
        productDescription: widget.productDescription,
        productPrice: widget.productPrice,
        productColor: widget.productColor,
        productImage: widget.productImage);

    if (widget.productColor == Colors.white)
      _whiteRadioselected = true;
    else if (widget.productColor == Colors.grey)
      _greyRadioselected = true;
    else
      _blackRadioselected = true;
  }

  void updateUI(int index, String title) {
    setState(() {
      if (index == Colours.white.index) {
        product = Product(
            productColor: Colors.white,
            productDescription: "Spectacular White",
            productImage: widget.productTitle == "Torus"
                ? "images/Torus-White.png"
                : "images/Platonic-White.png",
            productPrice: widget.productPrice,
            productTitle: widget.productTitle);
      } else if (index == Colours.grey.index) {
        product = Product(
            productColor: Colors.grey,
            productDescription: "Amazing Grey",
            productImage: widget.productTitle == "Torus"
                ? "images/Torus-Gray.png"
                : "images/Platonic-Gray.png",
            productPrice: widget.productPrice,
            productTitle: widget.productTitle);
      } else {
        product = Product(
            productColor: Colors.black,
            productDescription: "Noble Black",
            productImage: widget.productTitle == "Torus"
                ? "images/Torus-Black.png"
                : "images/Platonic-Black.png",
            productPrice: widget.productPrice,
            productTitle: widget.productTitle);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30.0),
            Text(
              '${product.productTitle}',
              style: kH1TextStyle,
            ),
            Text(
              '${product.productDescription}',
              style: kProductColorTitle,
            ),
            SizedBox(height: 30.0),
            AspectRatio(
                aspectRatio: 21.0 / 16.0,
                child: Image.asset(
                  '${product.productImage}',
                  fit: BoxFit.contain,
                )),
            SizedBox(height: 5.0),
            Text(
              '${product.productPrice}',
              style: kPriceTextStyle,
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RadioButton(
                    index: 0,
                    color: Colors.white,
                    isSelected: _whiteRadioselected,
                    onSelected: _handleWhichRadioSelected,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RadioButton(
                    index: 1,
                    color: Colors.grey,
                    isSelected: _greyRadioselected,
                    onSelected: _handleWhichRadioSelected,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RadioButton(
                    index: 2,
                    color: Colors.black,
                    isSelected: _blackRadioselected,
                    onSelected: _handleWhichRadioSelected,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: StyleButton(
                  onPressed: () {},
                  buttonChild: Text(
                    'ADD TO CART',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'MORE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1.9),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
