import 'package:flutter/material.dart';

Widget buildAppBar(int depth) {
  if (depth == 0) {
    return AppBar(
      leading: Icon(Icons.sort),
      elevation: 0.0,
      title: Text(
        'GEOMETRY',
        style: TextStyle(color: Colors.black, letterSpacing: 2.0,),
      ),
      centerTitle: true,
    );
  } else {
    return AppBar(
      elevation: 0.0,
      title: Text(
        '',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
