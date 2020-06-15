import 'package:flutter/material.dart';

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
        productPrice: '199.99'),
    Product(
        productTitle: 'Platonic',
        productDescription: 'Spectacular White',
        productImage: 'images/Platonic-White.png',
        productColor: Colors.white,
        productPrice: '199.99'),
    Product(
        productTitle: 'Torus',
        productDescription: 'Noble Black',
        productImage: 'images/Torus-Black.png',
        productColor: Colors.white,
        productPrice: '199.99'),
    Product(
        productTitle: 'Torus',
        productDescription: 'Noble Black',
        productImage: 'images/Torus-Black.png',
        productColor: Colors.white,
        productPrice: '199.99'),
    Product(
        productTitle: 'Torus',
        productDescription: 'Noble Black',
        productImage: 'images/Torus-Black.png',
        productColor: Colors.white,
        productPrice: '199.99'),
    Product(
        productTitle: 'Torus',
        productDescription: 'Noble Black',
        productImage: 'images/Torus-Black.png',
        productColor: Colors.white,
        productPrice: '199.99'),
  ];
}
