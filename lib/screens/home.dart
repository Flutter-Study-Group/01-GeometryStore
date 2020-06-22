import 'package:flutter/material.dart';
import 'package:geometry/utils/constants.dart';
import 'package:geometry/utils/store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _store = Provider.of<Store>(context);
    final double navBarHeight = MediaQuery.of(context).padding.top;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: navBarHeight + height * 0.06,
          bottom: height * 0.06,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
              ),
              child: Stack(
                children: <Widget>[
                  Icon(Icons.sort),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'GEOMETRY',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        letterSpacing: 2,
                        color: kBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.06),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
              ),
              child: Text(
                "Trends",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                  color: kBlack,
                ),
              ),
            ),
            SizedBox(height: height * 0.08),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _store.products.length,
                itemBuilder: (BuildContext itemContext, int index) {
                  final Map item = _store.products[index];
                  final color = item["colors"][index];
                  return InkWell(
                    onTap: () {
                      _store.setProduct(item);
                      _store.setColor(color);
                      Navigator.pushNamed(
                        context,
                        "/detail",
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: width * 0.1,
                        right: index == _store.products.length - 1 ?
                          width * 0.1 :
                          0.0,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: height * 0.02,
                      ),
                      width: width * 0.65,
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Hero(
                              tag: color,
                              child: Image.asset(
                                color["image"],
                                width: width * 0.6,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.08),
                            child: Text(
                              item["name"],
                              style: TextStyle(
                                fontSize: 45.0,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2.0,
                                color: kBlack,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.08),
                            child: Text(
                              color["name"],
                              style: TextStyle(
                                fontSize: 22.0,
                                color: kGrey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.08),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "\$",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  item["price"],
                                  style: TextStyle(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.0,
                                    color: kBlack,
                                  ),
                                ),
                                Text(
                                  "99",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.06,
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 15.0,
                                ),
                                width: width * 0.35,
                                decoration: BoxDecoration(
                                  color: kBlack,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: kWhite,
                                ),
                              ),
                              CircleAvatar(
                                child: Icon(Icons.bookmark_border),
                                backgroundColor: kBlack,
                                foregroundColor: kWhite,
                                radius: width * 0.065,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}