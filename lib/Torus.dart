import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  String name = "Torus-Black.png";
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
                  width: 270,
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
              padding: const EdgeInsets.symmetric(vertical:18.0),
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
                        name = "Torus-White.png";
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
                        name = "Torus-Gray.png";
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
                        name = "Torus-Black.png";
                        blackcolor = Colors.white;
                        greycolor = Colors.grey;
                        whitecolor = Colors.white;

                      });
                    },
                  ),
                ],
              ),
            ),
            ButtonTheme(
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
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: <Widget>[
                  Text('MORE',style: TextStyle(fontSize: 22),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:2.0),
                    child: Icon(Icons.keyboard_arrow_down,size: 25,color: Color(0xfff000000),),
                  )
                ],
              ),
            ),

          ],
        ),
      backgroundColor: Color(0xffe6e6e6),
    );

  }
}