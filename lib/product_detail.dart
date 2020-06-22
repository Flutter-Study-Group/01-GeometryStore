import 'package:flutter/material.dart';
import 'product_list.dart';

class ProductDetailScreen extends StatefulWidget {

  int index;
  String currentImg;
  Color currentColor;
  String currentColorName;
  String productName;
  String price;

  ProductDetailScreen(this.index, this.currentImg, this.currentColor, this.currentColorName, this.productName, this.price);
  
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  
  

  @override
  Widget build(BuildContext context) {

  


    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                widget.productName,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.currentColorName,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                widget.currentImg,
                fit: BoxFit.cover,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '\$',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '99',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.currentImg = productsList[widget.index]['colors'][0]['image'] ;
                        widget.currentColor = Colors.white;
                        widget.currentColorName = 'Elegant White';
                      });
                    },
                    child: widget.currentColor == Colors.white ? Icon(
                            Icons.radio_button_checked,
                            size: 30,
                            color: widget.currentColor,
                          ) : Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    radius: 50,
                    onTap: () {
                      setState(() {
                        widget.currentImg = productsList[widget.index]['colors'][1]['image'];
                        widget.currentColor = Colors.grey;
                        widget.currentColorName = 'Subtle Gray';
                      });
                    },
                    child: widget.currentColor == Colors.grey
                        ? Icon(
                            Icons.radio_button_checked,
                            size: 30,
                            color: widget.currentColor,
                          )
                        : Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.currentImg = productsList[widget.index]['colors'][2]['image'];
                        widget.currentColor = Colors.black;
                        widget.currentColorName = 'Noble Black';
                      });
                    },
                    child: widget.currentColor == Colors.black
                        ? Icon(
                            Icons.radio_button_checked,
                            size: 30,
                            color: widget.currentColor,
                          )
                        : Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: RaisedButton(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.black,
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                  onPressed: () {},
                  child: Text(
                    'ADD TO CARD',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'MORE',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
