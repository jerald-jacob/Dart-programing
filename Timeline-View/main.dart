import 'package:flutter/material.dart';

import 'data.dart';

List<Doodle> doodle = doodles;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListViews')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final size = MediaQuery.of(context).size;
  final width = size.width - 61;
  return ListView.builder(
      itemCount: doodle.length,
      itemBuilder: (context, index) {
        String str1 = doodle[index].time;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  width: 50.0,
                  //   color: Color.fromRGBO(253, 222, 166, 10),
                  child: Text(str1,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                )),
            Column(
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 1.0,
                  color: Colors.black,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: new BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Expanded(
                child: Card(
              child: Container(
                width: width,
                //   color: Color.fromRGBO(253, 222, 166, 10),
                child: Column(
                  children: <Widget>[
                    Text(_doodleTime(index),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(doodle[index].content,
                            style: TextStyle(fontSize: 15))),
                  ],
                ),
              ),
            ))
          ],
        );
      });
}

_doodleTime(i) {
  var _str = doodle[i].time;

  return _str;
}
