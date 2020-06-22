import 'package:flutter/material.dart';
import 'package:geometry/screens/detail.dart';
import 'package:geometry/screens/home.dart';
import 'package:geometry/utils/store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext _) => Store(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Gilroy'),
        initialRoute: "/",
        routes: {
          "/": (BuildContext context) => HomePage(),
          "/detail": (BuildContext context) => DetailPage()
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
