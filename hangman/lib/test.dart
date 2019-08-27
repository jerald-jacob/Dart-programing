import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(new MaterialApp(
      home: new TestAPI(),
    ));

class TestAPI extends StatefulWidget {
  @override
  TestAPIeState createState() => new TestAPIeState();
}

class TestAPIeState extends State<TestAPI> {
  final String url = "https://www.randomlists.com/data/vocabulary-words.json";
  List data;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var toJsonData = json.decode(response.body);
      data = toJsonData['data'];
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("GET API"),
        ),
        body: new ListView.builder(
            itemCount: data == null ? 0 : 1,
            itemBuilder: (BuildContext context, int index) {
              return new Container(
                  child: new Center(
                      child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Card(
                      child: new Container(
                    child: new Text(data[index]['name']),
                    padding: const EdgeInsets.all(20),
                  ))
                ],
              )));
            }));
  }
}
