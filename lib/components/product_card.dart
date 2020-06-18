import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({@required this.onPressed, @required this.cardContent});

  final Widget cardContent;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white30,
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 350,
          height: 700,
          child: cardContent,
        ),
      ),
    );
  }
}
