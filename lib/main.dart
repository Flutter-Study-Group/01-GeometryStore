import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      children: <Widget>[
      Expanded(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 6,
          child: Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:2.0,horizontal: 20),
                    child: Image.asset(
                      image,
                      height: 260,
                      width: 300,
                    ),
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
                new Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 5),
                    child: new Row(
                      children: <Widget>[
                        ButtonTheme(
                          child: FlatButton(
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

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:38.0),
                          child: ButtonTheme(
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(38.0),
                                  side: BorderSide(color: Color(0xfff313131))),
                              onPressed: () {},
                              color: Color(0xfff313131),
                              textColor: Colors.white,
                              child: Icon(Icons.bookmark_border),
                            ),
                            height: 60,
                            minWidth: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],);
  }

/*
Expanded(
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: ButtonTheme(
                      height: 50,
                      minWidth: 150,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38.0),
                            side: BorderSide(color: Color(0xfff313131))),
                        onPressed: () {},
                        color: Color(0xfff313131),
                        textColor: Colors.white,
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                ),
* */
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
          Expanded(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 490,
                width: 500,
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
                          MaterialPageRoute(builder: (context) => Platonic()),
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
  String description = "Amazing Black";
  Color blackcolor = Colors.black;
  Color whitecolor = Colors.white;
  Color greycolor = Colors.grey;
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
      body:
      Column(
        children: <Widget>[
          Center(
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
          Text(
            '$description',
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
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: whitecolor,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 17,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      name = "Platonic-White.png";
                      whitecolor = Colors.black;
                      description = "Spectacular white";
                      greycolor = Colors.grey;
                      blackcolor = Colors.black;
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  child: CircleAvatar(
                    radius: 20,
                    child: CircleAvatar(   backgroundColor: Colors.grey,
                      radius: 17,),
                    backgroundColor: greycolor,
                  ),
                  onPressed: () {
                    setState(() {
                      name = "Platonic-Gray.png";
                      description = "Delicious grey";
                      blackcolor = Colors.black;
                      greycolor = Colors.black;
                      whitecolor = Colors.white;
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  child: CircleAvatar(
                    radius: 20,
                    child: CircleAvatar(
                      radius: 17,backgroundColor: Colors.black,
                    ),
                    backgroundColor: blackcolor,
                  ),
                  onPressed: () {
                    setState(() {
                      description = "Amazing black";
                      name = "Platonic-Black.png";
                      blackcolor = Colors.white;
                      greycolor = Colors.grey;
                      whitecolor = Colors.white;

                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonTheme(
              height: 50,
              minWidth: 300,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38.0),
                    side: BorderSide(color: Color(0xfff313131))),
                onPressed: () {},
                color: Color(0xfff313131),
                textColor: Colors.white,
                child: FlatButton(

                  child: Text("Add to cart".toUpperCase(),
                      style: TextStyle(fontSize: 19, fontFamily: 'roboto',color: Colors.white)),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    });
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:5.0),
            child: Text('MORE',style: TextStyle(fontSize: 22),),
          ),
          Icon(Icons.keyboard_arrow_down,size: 25,color: Color(0xfff000000),)
        ],
      ),
      backgroundColor: Color(0xffe6e6e6),
    );

  }
}


