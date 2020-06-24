import 'package:flutter/material.dart';
import 'package:geometry/components/nav_bar.dart';
import 'package:geometry/components/styled_button.dart';
import 'package:geometry/constants.dart';
import 'package:geometry/components/custom_radio.dart';

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

  bool _whiteRadioselected = false;
  bool _greyRadioselected = false;
  bool _blackRadioselected = false;

  void _handleWhichRadioSelected(int index) {
    setState(() {
      if (index == 0) {
        _whiteRadioselected = true;
        _greyRadioselected = false;
        _blackRadioselected = false;
      } else if (index == 1) {
        _greyRadioselected = true;
        _whiteRadioselected = false;
        _blackRadioselected = false;
      } else {
        _blackRadioselected = true;
        _whiteRadioselected = false;
        _greyRadioselected = false;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.productColor == Colors.white)
      _whiteRadioselected = true;
    else if (widget.productColor == Colors.grey)
      _greyRadioselected = true;
    else
      _blackRadioselected = true;
  }

  void updateUI(Colours col, String title) {
    setState(() {
      if (col == Colours.white) {
        DetailPage(
            productColor: Colors.white,
            productDescription: "Spectacular White",
            productImage: widget.productTitle == "Torus"
                ? "images/Torus-Black.png"
                : "images/Platonic-Black.png",
            productPrice: widget.productPrice,
            productTitle: widget.productTitle);
      } else if (col == Colours.grey) {
        DetailPage(
            productColor: Colors.grey,
            productDescription: "Amazing Grey",
            productImage: widget.productTitle == "Torus"
                ? "images/Torus-Black.png"
                : "images/Platonic-Black.png",
            productPrice: widget.productPrice,
            productTitle: widget.productTitle);
      } else {
        DetailPage(
            productColor: Colors.black,
            productDescription: "Noble Black",
            productImage: widget.productTitle == "Torus"
                ? "images/Torus-Black.png"
                : "images/Platonic-Black.png",
            productPrice: widget.productPrice,
            productTitle: widget.productTitle);
      }

      print(widget.productColor);
      print(widget.productTitle);
      print(widget.productDescription);
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
              widget.productTitle,
              style: kH1TextStyle,
            ),
            Text(
              widget.productDescription,
              style: kProductColorTitle,
            ),
            SizedBox(height: 30.0),
            AspectRatio(
                aspectRatio: 21.0 / 16.0,
                child: Image.asset(
                  widget.productImage,
                  key: UniqueKey(),
                  fit: BoxFit.contain,
                )),
            SizedBox(height: 5.0),
            Text(
              widget.productPrice,
              key: UniqueKey(),
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
                    'ADD TO CARD',
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
