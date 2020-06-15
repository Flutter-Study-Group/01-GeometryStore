import 'package:flutter/material.dart';

class ProductCategory extends StatefulWidget {
  final String imgUrl;
  final String productName;
  final String productPrice;
  final String productColor;

  ProductCategory({@required this.imgUrl,this.productName,this.productPrice,this.productColor});

  @override
  _ProductCategoryState createState() => _ProductCategoryState();}

class _ProductCategoryState extends State<ProductCategory> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:12.0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:InkWell(
              onTap: (){

              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:24.0),
                  Expanded(child: Image.asset(widget.imgUrl)),
                  Text(widget.productName),
                  Text(widget.productColor),
                  Text(widget.productPrice),
                  ButtonBar(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: (){
                          print('The button is being clicked');
                        },
                        child:Icon(Icons.add),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)
                        ),
                        color: Colors.black87,
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          print('The bookmark button has been clicked');
                        },
                        child: Icon(Icons.bookmark_border),
                        backgroundColor: Colors.black87,
                      )
                    ],
                  )

                ],
              ),
            )
        ),
      ),
    );
  }
}


