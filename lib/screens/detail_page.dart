import 'package:flutter/material.dart';
import 'package:geometry/components/nav_bar.dart';
import 'package:geometry/components/styled_button.dart';
import 'package:geometry/constants.dart';

class DetailPage extends StatefulWidget {
  DetailPage(
      {@required this.productTitle,
      @required this.productDescription,
      @required this.productImage,
      @required this.productPrice});

  final String productTitle;
  final String productDescription;
  final String productImage;
  final String productPrice;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color colorChoice = Color(0xFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                widget.productTitle,
                style: kH1TextStyle,
              ),
            ),
          ),
          Expanded(
            child: Text(
              widget.productDescription,
              style: kProductColorTitle,
            ),
          ),
          Expanded(
            flex: 5,
            child: Image.asset(widget.productImage),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                widget.productPrice,
                style: kPriceTextStyle,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: true,
                  onChanged: (bool newValue) {
                    //
                  },
                ),
                Checkbox(
                  value: false,
                  onChanged: (bool newValue) {
                    //
                  },
                ),
                Checkbox(
                  value: false,
                  onChanged: (bool newValue) {
                    //
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: StyledButton(
                onPressed: () {},
                buttonChild: Text(
                  'ADD TO CARD',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
