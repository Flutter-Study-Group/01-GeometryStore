import 'package:flutter/material.dart';
import 'package:geometry/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        appBarTheme: AppBarTheme(
            color: Color(0xFFF5F5F5),
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
