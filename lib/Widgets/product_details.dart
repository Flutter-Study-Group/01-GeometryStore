import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  ProductDetails({@required this.imgUrl,this.productName,this.productPrice,this.productColor});
  final imgUrl,productName,productPrice,productColor;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  var fontStyle1=TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: 'Work Sans/WorkSans-Bold',
      fontSize: 35.0
  );

  var fontStyle2=TextStyle(
    fontFamily: 'Work Sans/WorkSans-Regular',
    fontSize: 25.0,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text(widget.productName, style:fontStyle1),
            Text(widget.productColor,style: fontStyle2,),
            SizedBox(height: 14.0,),
            Image.asset(widget.imgUrl),
            Text(widget.productPrice, style: fontStyle1,),
            RaisedButton(
              color: Colors.black87,
              child: Text('Add to Cart',
              style: TextStyle(color:Colors.white),),
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

