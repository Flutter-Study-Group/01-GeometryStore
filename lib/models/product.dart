import 'package:flutter/material.dart';
import 'package:geometry/constants.dart';

class Product {
  Product(
      {this.productTitle,
      this.productDescription,
      this.productImage,
      this.productPrice,
      this.productColor});

   String productTitle;
   String productDescription;
   String productImage;
   String productPrice;
   Color productColor;
}

class ProductList {
  List<Product> productList = [
    Product(
        productTitle: 'Torus',
        productDescription: 'Noble Black',
        productImage: 'images/Torus-Black.png',
        productColor: Colors.black,
        productPrice: '${dollarSign}199$nine$nine'),
    Product(
        productTitle: 'Platonic',
        productDescription: 'Spectacular White',
        productImage: 'images/Platonic-White.png',
        productColor: Colors.white,
        productPrice: '${dollarSign}199$nine$nine'),
  ];
}
