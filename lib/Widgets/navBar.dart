import 'package:flutter/material.dart';

Widget appBar(){
  return Padding(
    padding: const EdgeInsets.only(top:18.0),
    child: ListTile(
      leading: Icon(Icons.sort),
      title: Text('GEOMETRY',
//        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
         style: TextStyle(
           fontFamily: 'Source Sans',
           fontSize: 20.0,
           fontWeight: FontWeight.bold
         ),),
      onTap:(){

      } ,
    ),
  );
}