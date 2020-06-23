//1. The fonts are slightly too big
//2. There's not much breathing space between the text widgets
//3. The Add Button would be better if it takes all the white space horizontally

import 'package:flutter/material.dart';
import 'package:geometry/Screens/details.dart';

class ProductCategory extends StatefulWidget {
  final String imgUrl;
  final String productName;
  final String productPrice;
  final String productColor;

  ProductCategory({@required this.imgUrl,this.productName,this.productPrice,this.productColor});

  @override
  _ProductCategoryState createState() => _ProductCategoryState();}

class _ProductCategoryState extends State<ProductCategory> {
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
    return ClipRect(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:22.0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:InkWell(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder:(context){
                      return DetailsPage(
                        imgUrl: widget.imgUrl,
                        productName: widget.productName,
                        productPrice: widget.productPrice,
                        productColor: widget.productColor,
                      );

                    })
                );

              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:44.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height:24.0),
                    Expanded(child: Image.asset(widget.imgUrl)),
                    Text(widget.productName,
                      style: fontStyle1),
                    SizedBox(height:14.0),
                    Text(widget.productColor,
                    style: fontStyle2,),
                    SizedBox(height:14.0),
                    Text(widget.productPrice,
                    style: fontStyle1,),
                    ButtonBar(
                        alignment:MainAxisAlignment.center,
                        mainAxisSize:MainAxisSize.max,
                        buttonMinWidth: 100,
                      children: <Widget>[
                        RaisedButton(
                          
                          onPressed: (){
                            print('The button is being clicked');
                          },
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.add),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)
                          ),
                          color: Colors.black87,
                        ),
                        FloatingActionButton(
                          // I nullified the hero tag as it was causing errors. This caused by the fact I am creating multiple
                          // Floating buttons on my screen. Another way to solve teh problem is to pass an index to each button.
                          heroTag: null,
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
              ),
            )
        ),
      ),
    );
  }
}


