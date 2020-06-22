import 'package:flutter/material.dart';
import 'package:geometry/utils/data.dart';

class Store extends ChangeNotifier {
  /* STATES */
  List<Map> _products = productsList;
  Map _product = new Map();
  Map _color = new Map();

  /* GETTERS */
  get products => _products;
  get product => _product;
  get color => _color;

  /* SETTERS */
  void setProduct(Map selectedProduct) {
    _product = selectedProduct;
    notifyListeners();
  }
  void setColor(Map selectedColor) {
    _color = selectedColor;
    notifyListeners();
  }
}