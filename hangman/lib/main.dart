import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hangman/Next.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

class MyHomePage extends StatefulWidget {
  final String name;
  const MyHomePage(this.name);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _email = '';
  final String url = "https://www.randomlists.com/data/vocabulary-words.json";
  List data;
  @override
  void initState() {
    super.initState();
    _loadCounter();
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

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _email = (prefs.getString('email') ?? '');
    });
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _email = "jerald jacob";
    });
    prefs.setString('email', _email);
    await prefs.setStringList('mylist', data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_email',
            ),
            new RaisedButton(
              child: new Text("next2"),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Next()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageeState createState() => _MainPageeState();
}

class _MainPageeState extends State<MainPage> {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(234, 182, 111, 88),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              // Max Size
//              Container(
//                  height: 100,
//                  color: Color.fromRGBO(90, 58, 29, 10),
//                  margin: EdgeInsets.all(8.0),
//                  child: Image.asset(
//                    'images/maingif.gif',
//                    width: 300,
//                    height: 280,
//                  )),
              Container(
                height: 100,
                color: Color.fromRGBO(34, 80, 41, 55),
                margin: EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/Hangman-Logo.png',
                  width: 295,
                  height: 280,
                ),
              ),

              Container(
                  height: 480,
                  // color: Colors.white,
                  color: Color.fromRGBO(34, 80, 41, 20),
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 0,
                        height: 40,
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          //   decoration: const BoxDecoration(
                          color: Color.fromRGBO(16, 50, 33, 20),
//                            gradient: LinearGradient(
//                              colors: <Color>[
//                                Color(0xFF0D47A1),
//                                Color(0xFF1976D2),
//                                Color(0xFF42A5F5),
//                              ],
//                            ),
                          //   ),
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            'ONE PLAYER',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Caesar_Dressing',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          //   decoration: const BoxDecoration(
                          color: Color.fromRGBO(16, 50, 33, 20),
//                            gradient: LinearGradient(
//                              colors: <Color>[
//                                Color(0xFF0D47A1),
//                                Color(0xFF1976D2),
//                                Color(0xFF42A5F5),
//                              ],
//                            ),
                          //   ),
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            'TWO PLAYER',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Caesar_Dressing',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          //   decoration: const BoxDecoration(
                          color: Color.fromRGBO(16, 50, 33, 20),
//                            gradient: LinearGradient(
//                              colors: <Color>[
//                                Color(0xFF0D47A1),
//                                Color(0xFF1976D2),
//                                Color(0xFF42A5F5),
//                              ],
//                            ),
                          //   ),
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            'OPTIONS',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Caesar_Dressing',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          //   decoration: const BoxDecoration(
                          color: Color.fromRGBO(16, 50, 33, 20),
//                            gradient: LinearGradient(
//                              colors: <Color>[
//                                Color(0xFF0D47A1),
//                                Color(0xFF1976D2),
//                                Color(0xFF42A5F5),
//                              ],
//                            ),
                          //   ),
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            'MORE GAMES',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Caesar_Dressing',
                              color: Colors.white,
                              //
                              // fontWeight: FontWeight.,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SecondPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
