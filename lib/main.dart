import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Platonic.dart';
import 'Torus.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  Widget Mycards(
      String image, String donutname, String color, String price) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 6,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 20),
              child: Image.asset(
                image,
                height: 260,
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                donutname,
                style: TextStyle(
                    color: Color(0xfff313131),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'proxima'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                color,
                style: TextStyle(
                    color: Color(0xfffC2C2C2),
                    fontSize: 25,
                    letterSpacing: 1.6),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child:  Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                          child: Transform.translate(
                            offset: const Offset(2, -14),
                            child: Text(
                              '\$',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'proxima',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.6),
                            ),
                          )),
                      TextSpan(
                        text: price,
                        style: TextStyle(
                            color: Color(0xfff333333),
                            fontFamily: 'roboto',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.6),
                      ),
                      WidgetSpan(
                          child: Transform.translate(
                            offset: const Offset(2, -14),
                            child: Text(
                              '99',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'roboto',
                                  fontSize: 18,
                                  letterSpacing: 1.6),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            new Container(
              child: new Row(
                children: <Widget>[
                  ButtonTheme(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:28.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            side: BorderSide(color: Color(0xfff313131))),
                        onPressed: () {},
                        color: Color(0xfff313131),
                        textColor: Colors.white,
                        child: Icon(Icons.add),
                      ),
                    ),
                    height: 57,
                    minWidth: 150,
                  ),

                  ButtonTheme(
                    child:
                        Container(
                          width: 100,
                          height: 60,
                          alignment: Alignment.bottomRight,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(38.0),
                                side: BorderSide(color: Color(0xfff313131))),
                            onPressed: () {},
                            color: Color(0xfff313131),
                            textColor: Colors.white,
                            child: Icon(Icons.bookmark_border),
                          ),
                    ),
                    height: 60,
                    minWidth: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
          child: Text(
            'GEOMETRY',
            style: TextStyle(color: Colors.black, letterSpacing: 1.6),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Trends',
                style: TextStyle(
                    color: Color(0xff2b2b2b),
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: <Widget>[
            FlatButton(
              child: Mycards('images/Torus-Black.png', 'Torus',
                  'Noble Black', '199'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondRoute()),
                );
              },
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Platonic()),
                );
              },
              child: Mycards('images/Platonic-Gray.png', 'Platonic',
                  'Subtle Gray', '299'),
            )
          ],
          ),
        )

        ],
      ),
      backgroundColor: Color(0xffe6e6e6),

    );


  }

}

