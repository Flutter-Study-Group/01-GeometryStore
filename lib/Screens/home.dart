import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:geometry/Widgets/navBar.dart';
import 'package:geometry/Widgets/product_category.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int $dollar = 0x24;
  @override
  Widget build(BuildContext context) {
    // Querying the size of  a screen returns both width and height.
    //You can access either as shown below
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.grey[200] ,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                appBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                  child: Text(
                    'Trends',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Work Sans/WorkSans-Bold',
                      fontSize: 35.0
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                SizedBox(
                  height:size.height*0.65,
                  child: ListView(
                     scrollDirection: Axis.horizontal,
                     shrinkWrap: true,
                     children: <Widget>[
                       ProductCategory(
                         imgUrl: 'images/Torus-Black.png',
                         productName: 'Torus',
                         productColor: 'Noble Black',
                         productPrice: '199\u2079\u2079',
                       ),
                       ProductCategory(
                         imgUrl: 'images/Platonic-Gray.png',
                         productName: 'Platonic',
                         productColor: 'Subtle Gray',
                         productPrice:'180\u2079\u2079' ,
                       )
                     ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
