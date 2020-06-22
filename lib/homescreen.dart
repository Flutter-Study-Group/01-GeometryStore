
import 'package:flutter/material.dart';
import 'package:geometry/product_detail.dart';
import 'package:geometry/product_list.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GEOMETRY',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.sort,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 20.0,
              ),
              child: Text(
                'Trends',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child:
                ListView.separated(
                  padding: EdgeInsets.only(bottom: 10),
                  itemCount: productsList.length,
                  scrollDirection: Axis.horizontal, 
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 30,);
                  },
                  itemBuilder: (BuildContext context, int index){
                return Container(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return ProductDetailScreen(
                              index,
                              productsList[index]['colors'][0]['image'],
                              productsList[index]['colors'][0]['color'],
                              productsList[index]['colors'][0]['name'],
                              productsList[index]['name'],
                              productsList[index]['price'],
                            );
                          })
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Image.asset(
                              productsList[index]['colors'][0]['image'],
                              fit: BoxFit.cover,
                              width: 250,
                              height: 250,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              productsList[index]['name'],
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              productsList[index]['colors'][0]['name'],
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '\$',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  productsList[index]['price'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 32,
                                  ),
                                ),
                                Text(
                                  '99',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                RaisedButton(
                                  elevation: 5,
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  onPressed: () {
                                  },
                                  color: Colors.black,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Material(
                                  elevation: 5,
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.turned_in_not,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
                  })
            ),
          ],
        ),
      ),
    );
  }
}
