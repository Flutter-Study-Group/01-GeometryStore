import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({@required this.onPressed, @required this.cardContent});

  final Widget cardContent;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 350.0,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
        ),
        child: cardContent,
      ),
    );
  }
}
