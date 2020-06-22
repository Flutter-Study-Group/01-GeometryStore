import 'package:flutter/material.dart';
import 'package:geometry/utils/constants.dart';
import 'package:geometry/utils/store.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _store = Provider.of<Store>(context);
    final double navBarHeight = MediaQuery.of(context).padding.top;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        padding: EdgeInsets.only(
          top: navBarHeight + height * 0.06,
          bottom: height * 0.06,
        ),
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.05,
              ),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    _store.product["name"],
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.0,
                      color: kBlack,
                    ),
                  ),
                  Text(
                    _store.color["name"],
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 20.0,
                    ),
                  ),
                  Hero(
                    tag: _store.color,
                    child: Image.asset(
                      _store.color["image"],
                      width: width * 0.8,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "\$",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        _store.product["price"],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _store.product["colors"].map<Widget>(
                      (color) => InkWell(
                        onTap: () => _store.setColor(color),
                        child: Container(
                          width: width * 0.1,
                          height: width * 0.1,
                          margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                            color: color["color"],
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: color["color"] == _store.color["color"] ? <BoxShadow>[
                              BoxShadow(
                                color: color["color"],
                                offset: Offset.fromDirection(10, 0.0),
                                spreadRadius: 6.0,
                              ),
                              BoxShadow(
                                color: kBackgroundColor,
                                offset: Offset.fromDirection(10, 0.0),
                                spreadRadius: 4.0,
                              ),
                            ] : [],
                          ),
                        ),
                      )
                    ).toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}