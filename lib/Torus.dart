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
  Color blackcolor = Colors.white;
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
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              Center(
                child: Text(
                  '$description',
                  style: TextStyle(
                      color: Color(0xfffACACAC),
                      fontFamily: 'proxima',
                      fontSize: 23,
                      letterSpacing: 1.6),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0),
                  child: Image.asset(
                    'images/$name',
                    width: 270,
                  )),
              Center(
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
                        text: '199',
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical:14.0),
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
              Container(
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 5),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38.0),
                      side: BorderSide(color: Color(0xfff313131))),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    });
                  },
                  color: Color(0xfff313131),
                  textColor: Colors.white,
                  child: FlatButton(
                    child: Text("Add to card".toUpperCase(),
                        style: TextStyle(fontSize: 19, fontFamily: 'roboto',color: Colors.white)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:3.0),
                      child: Text('MORE',style: TextStyle(fontSize: 20,fontFamily: 'roboto'),),
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              )

            ],
          ),
          scrollDirection: Axis.vertical,
        ),

      backgroundColor: Color(0xffe6e6e6),

    );

  }
}