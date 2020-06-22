import 'package:flutter/material.dart';
import 'package:geometry/screens/home_page.dart';
import 'constants.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xFFE3E3E3),
        appBarTheme: AppBarTheme(
            color: kScaffoldBackgroundColor,
            iconTheme: IconThemeData(color: Colors.black)),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
