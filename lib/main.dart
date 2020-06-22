import 'package:flutter/material.dart';
import 'package:geometry/homescreen.dart';
import 'package:geometry/product_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
