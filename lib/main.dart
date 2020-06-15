import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  Container Mycards(String image, String donutname, String color, String price) {
    return Container(
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 6,
        child: Center(
          child: Wrap(
            direction: Axis.vertical,
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  image,
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
                child: Text(
                  price,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'roboto',
                      fontSize: 25,
                      letterSpacing: 1.6),
                ),
              ),
              Expanded(
                child: Container(
                    width: 140.0,
                    color: Color(0xfff313131),
                    height: 35.0,
                    margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 20),
                    child: SizedBox.expand(
                        child: OutlineButton(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          onPressed: () {},
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
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
          Expanded(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 490,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Mycards('images/Torus-Black.png', 'Torus',
                            'Noble Black', '\$199'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    ),
                    Expanded(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Platonic()),
                            );
                          },
                          child: Mycards('images/Platonic-Gray.png', 'Platonic',
                              'Subtle Gray', '\$299'),
                        ))
                  ],
                )),
          )
        ],
      ),
      backgroundColor: Color(0xffe6e6e6),
    );
  }
}
class Platonic extends StatefulWidget {
  @override
  _PlatonicState createState() => _PlatonicState();
}

class _PlatonicState extends State<Platonic> {
  String name = "Platonic-Black.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Color(0xfff313131), //change your color here
          ),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Platonic',
                  style: TextStyle(
                      color: Color(0xfff313131),
                      fontFamily: 'proxima',
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.6),
                ),
              ),
            ),
            Text(
              'Amazing Black',
              style: TextStyle(
                  color: Color(0xfffACACAC),
                  fontFamily: 'proxima',
                  fontSize: 19,
                  letterSpacing: 1.6),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset(
                  'images/$name',
                  width: 300,
                )),
            Text(
              '\$199',
              style: TextStyle(
                  color: Color(0xfff333333),
                  fontFamily: 'proxima',
                  fontSize: 29,
                  letterSpacing: 1.6),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        name = "Platonic-White.png";
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey,

                    ),
                    onPressed: () {
                      setState(() {
                        name = "Platonic-Gray.png";
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        name = "Platonic-Black.png";
                      });
                    },
                  ),

                ],
              ),
            ),
            ButtonTheme(
              height: 50,
              minWidth: 250,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38.0),
                    side: BorderSide(color: Color(0xfff313131))),
                onPressed: () {},
                color: Color(0xfff313131),
                textColor: Colors.white,
                child: Text("Add to cart",
                    style: TextStyle(fontSize: 19,fontFamily: 'roboto')),
              ),
            ),
          ],
        ));
  }
}

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  String name = "Torus-Black.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Color(0xfff313131), //change your color here
          ),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Torus',
                  style: TextStyle(
                      color: Color(0xfff313131),
                      fontFamily: 'proxima',
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.6),
                ),
              ),
            ),
            Text(
              'Spectacular White',
              style: TextStyle(
                  color: Color(0xfffACACAC),
                  fontFamily: 'proxima',
                  fontSize: 19,
                  letterSpacing: 1.6),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset(
                  'images/$name',
                  width: 300,
                )),
            Text(
              '\$199',
              style: TextStyle(
                  color: Color(0xfff333333),
                  fontFamily: 'proxima',
                  fontSize: 29,
                  letterSpacing: 1.6),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        name = "Torus-White.png";
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey,

                    ),
                    onPressed: () {
                      setState(() {
                        name = "Torus-Gray.png";
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        name = "Torus-Black.png";
                      });
                    },
                  ),

                ],
              ),
            ),
            ButtonTheme(
              height: 50,
              minWidth: 250,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38.0),
                    side: BorderSide(color: Color(0xfff313131))),
                onPressed: () {},
                color: Color(0xfff313131),
                textColor: Colors.white,
                child: Text("Add to cart",
                    style: TextStyle(fontSize: 19,fontFamily: 'roboto')),
              ),
            ),
          ],
        ));
  }

}
