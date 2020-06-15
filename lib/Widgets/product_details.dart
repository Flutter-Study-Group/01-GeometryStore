import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  ProductDetails({@required this.imgUrl,this.productName,this.productPrice,this.productColor});
  final imgUrl,productName,productPrice,productColor;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text(widget.productName),
            Text(widget.productColor),
            Image.asset(widget.imgUrl),
            Text(widget.productPrice),
            RaisedButton(
              child: Text('Add to Cart'),
              onPressed: (){
                print('Item added to cart');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)
              ),
            ),
            DropdownButton(
              items: <String>['More', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
                onChanged: null,
                icon:Icon(Icons.arrow_drop_down),
            )

          ],
        ),
      ),
    );
  }
}

