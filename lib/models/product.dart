import 'package:flutter/material.dart';
// import 'package:charcode/charcode.dart';

const dollarSign = '\u0024';
const nine = '\u2079';

class Product {
  Product(
      {this.productTitle,
      this.productDescription,
      this.productImage,
      this.productPrice,
      this.productColor});

  final String productTitle;
  final String productDescription;
  final String productImage;
  final String productPrice;
  final Color productColor;
}

class ProductList {
  List<Product> productList = [
    Product(
        productTitle: 'Torus',
        productDescription: 'Noble Black',
        productImage: 'images/Torus-Black.png',
        productColor: Colors.white,
        productPrice: '${dollarSign}199$nine$nine'),
    Product(
        productTitle: 'Platonic',
        productDescription: 'Spectacular White',
        productImage: 'images/Platonic-White.png',
        productColor: Colors.white,
        productPrice: '${dollarSign}199$nine$nine'),
  ];
}
