import 'package:flutter/material.dart';
import 'package:geometry/Widgets/product_details.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({@required this.imgUrl,this.productName,this.productPrice,this.productColor});
  final imgUrl,productName,productPrice,productColor;
  @override
  _DetailsPageState createState() => _DetailsPageState();


}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
         iconTheme: IconThemeData(
         color: Colors.black87, //change your color here
  ),
      ),
      body:SafeArea(
        child: ProductDetails(
              imgUrl: widget.imgUrl,
              productName: widget.productName,
             productPrice: widget.productPrice,
             productColor: widget.productColor,
        ),
      )
    );
  }
}
