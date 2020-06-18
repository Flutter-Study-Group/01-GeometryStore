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

enum Colours { white, grey, black }

class _DetailPageState extends State<DetailPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
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
            child: Align(
              child: Text(
                widget.productDescription,
                style: kProductColorTitle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Center(child: Image.asset(widget.productImage)),
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
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ColorsRadio(color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ColorsRadio(color: Colors.grey)
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ColorsRadio(color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
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
          ),
          Expanded(
            child: Padding(
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
          ),
        ],
      ),
    );
  }
}

class ColorsRadio extends StatelessWidget {
  ColorsRadio({this.color, this.onSelected, this.borderColor : const Color(0xFFE3E3E3)});

  final Color color;
  final Color borderColor;
  final Function onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(width: 4.5, color: color),
          color: color,
        ),
        child: Center(
          child: Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              border: Border.all(width: 4.0, color: borderColor),
              borderRadius: BorderRadius.circular(50.0),
              color: color,
            ),
            child: InkWell(
              onTap: onSelected,
            ),
          ),
        ),
    );
  }
}
