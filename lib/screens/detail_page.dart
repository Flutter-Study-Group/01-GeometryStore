import 'package:flutter/material.dart';
import 'package:geometry/components/nav_bar.dart';
import 'package:geometry/components/styled_button.dart';
import 'package:geometry/constants.dart';
import 'package:geometry/models/product.dart';

class DetailPage extends StatefulWidget {
  DetailPage(
      {@required Key key,
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
  Color defaultRadioColor;
  Color selectedRadioBorderColor;
  String productTitle;
  Product product = Product();

  @override
  void initState() {
    super.initState();
    defaultRadioColor = widget.productColor;
    productTitle = widget.productTitle;
  }

  void updateUI(Color col, String title) {
    setState(() {
      print(col);
      print(title);

      if (col == Colors.white) {
        product.productColor = col;
        product.productDescription = "Spectacular White";
        product.productImage = title == "Torus"
            ? "images/Torus-White.png"
            : "images/Platonic-White.png";
        product.productTitle = title;
        product.productPrice = '${dollarSign}199$nine$nine';
      } else if (col == Colors.grey) {
        product.productColor = col;
        product.productDescription = "Amazing Grey";
        product.productImage = title == "Torus"
            ? "images/Torus-Gray.png"
            : "images/Platonic-Gray.png";
        product.productTitle = title;
        product.productPrice = '${dollarSign}199$nine$nine';
      } else {
        product.productColor = col;
        product.productDescription = "Noble Black";
        product.productImage = title == "Torus"
            ? "images/Torus-Black.png"
            : "images/Platonic-Black.png";
        product.productTitle = title;
        product.productPrice = '${dollarSign}199$nine$nine';
      }

      print(product.productImage);
      print(product.productDescription);
      DetailPage(
          key: UniqueKey(),
          productColor: product.productColor,
          productDescription: product.productDescription,
          productImage: product.productImage,
          productPrice: product.productPrice,
          productTitle: product.productTitle);
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
              key: UniqueKey(),
              style: kH1TextStyle,
            ),
            Text(
              widget.productDescription,
              key: UniqueKey(),
              style: kProductColorTitle,
            ),
            SizedBox(height: 30.0),
            AspectRatio(
                key: UniqueKey(),
                aspectRatio: 21.0 / 16.0,
                child: Image.asset(
                  widget.productImage,
                  fit: BoxFit.contain,
                )),
            SizedBox(height: 5.0),
            Text(
              widget.productPrice,
              style: kPriceTextStyle,
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RadioButton(
                    key: UniqueKey(),
                    color: Colors.white,
                    borderColor: defaultRadioColor == Colors.white
                        ? Color(0xFFE3E3E3)
                        : Colors.white,
                    onSelected: () {
                      selectedRadioBorderColor = Colors.white;
                      updateUI(selectedRadioBorderColor, productTitle);
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RadioButton(
                      key: UniqueKey(),
                      color: Colors.grey,
                      borderColor: defaultRadioColor == Colors.grey
                          ? Color(0xFFE3E3E3)
                          : Colors.grey,
                      onSelected: () {
                        selectedRadioBorderColor = Colors.grey;
                        updateUI(selectedRadioBorderColor, productTitle);
                      },
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RadioButton(
                    key: UniqueKey(),
                    color: Colors.black,
                    borderColor: defaultRadioColor == Colors.black
                        ? Color(0xFFE3E3E3)
                        : Colors.black,
                    onSelected: () {
                      selectedRadioBorderColor = Colors.black;
                      updateUI(selectedRadioBorderColor, productTitle);
                    },
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

class RadioButton extends StatelessWidget {
  RadioButton(
      {this.key,
      this.color,
      this.onSelected,
      this.borderColor: const Color(0xFFE3E3E3)})
      : super(key: key);

  final Color color;
  final Color borderColor;
  final Function onSelected;
  final Key key;

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
