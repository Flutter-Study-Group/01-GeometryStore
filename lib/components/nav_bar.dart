import 'package:flutter/material.dart';

Widget buildAppBar() {
  return AppBar(
    leading: Icon(Icons.sort),
    elevation: 0.0,
    title: Text(
      'GEOMETRY',
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
  );
}
