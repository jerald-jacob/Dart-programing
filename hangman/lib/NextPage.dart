import 'package:flutter/material.dart';
import 'package:hangman/NextPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

String _email = '';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _email = (prefs.getString('email') ?? '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text("read value from sharepreference is:" + _email),
    );
  }
}

class Page1 extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(81, 23, 19, 5),
        body: SafeArea(
//            child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Image.asset('images/maingif.gif'),
//            Text('HANGMAN',
//                style: TextStyle(
//                    fontFamily: 'Pacifico',
//                    color: Colors.teal.shade50,
//                    fontSize: 40,
//                    fontWeight: FontWeight.bold)),
//            MaterialButton(
//                child: Text(
//                  'PLAY',
//                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                ),
//                textTheme: ButtonTextTheme.accent,
//                color: Colors.orange,
//                onPressed: () {
//                  Navigator.of(context).push(_createRoute());
//                }),
//            Card(
//              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//              color: Colors.white,
//              child: Padding(
//                padding: EdgeInsets.all(15),
//                child: Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.email,
//                      color: Colors.teal,
//                    ),
//                    SizedBox(width: 15.0),
//                    Text(
//                      'Jeraldjacob10@gmail.com',
//                      style: TextStyle(
//                          fontSize: 20.0,
//                          fontFamily: 'Source Sans Pro',
//                          color: Colors.teal),
//                    )
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
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
                color: Color.fromRGBO(90, 58, 29, 10),
                margin: EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/Hangman-Logo.png',
                  width: 295,
                  height: 280,
                ),
              ),

              Container(
                  height: 420,
                  //  color: Color.fromRGBO(76, 118, 45, 10),
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/hangman/one.png'),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Padding(
//Add padding around textfield
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          cursorColor: Colors.white,
                          controller: _textFieldController,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                          decoration: InputDecoration(
//Add th Hint text here.

                            hintText: "Enter your name",
                            hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white60,
                                fontWeight: FontWeight.w300),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      new MaterialButton(
                        padding: const EdgeInsets.all(8.0),
                        // textColor: Colors.re,
                        color: Colors.blue,

                        child: new Text(
                          "Go",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Page2()));
                        },
                      ),
                    ],
                  )),
              Container(
                child: Card(
                  color: Color.fromRGBO(90, 58, 29, 10),
                ),
                height: 40,
                margin: EdgeInsets.all(8.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(81, 23, 19, 5),
        body: SafeArea(
//            child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Image.asset('images/maingif.gif'),
//            Text('HANGMAN',
//                style: TextStyle(
//                    fontFamily: 'Pacifico',
//                    color: Colors.teal.shade50,
//                    fontSize: 40,
//                    fontWeight: FontWeight.bold)),
//            MaterialButton(
//                child: Text(
//                  'PLAY',
//                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                ),
//                textTheme: ButtonTextTheme.accent,
//                color: Colors.orange,
//                onPressed: () {
//                  Navigator.of(context).push(_createRoute());
//                }),
//            Card(
//              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//              color: Colors.white,
//              child: Padding(
//                padding: EdgeInsets.all(15),
//                child: Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.email,
//                      color: Colors.teal,
//                    ),
//                    SizedBox(width: 15.0),
//                    Text(
//                      'Jeraldjacob10@gmail.com',
//                      style: TextStyle(
//                          fontSize: 20.0,
//                          fontFamily: 'Source Sans Pro',
//                          color: Colors.teal),
//                    )
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
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
                color: Color.fromRGBO(90, 58, 29, 10),
                margin: EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/Hangman-Logo.png',
                  width: 295,
                  height: 280,
                ),
              ),

              Container(
                  height: 420,
                  //  color: Color.fromRGBO(76, 118, 45, 10),
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/hangman/two.png'),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Padding(
//Add padding around textfield
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          cursorColor: Colors.white,
                          controller: _textFieldController,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                          decoration: InputDecoration(
//Add th Hint text here.

                            hintText: "_ _ _ _ _ _",
                            hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white60,
                                fontWeight: FontWeight.w300),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      new MaterialButton(
                        padding: const EdgeInsets.all(8.0),
                        // textColor: Colors.re,
                        color: Colors.blue,

                        child: new Text(
                          "Go",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Page3()));
                        },
                      ),
                    ],
                  )),
              Container(
                child: Card(
                  color: Color.fromRGBO(90, 58, 29, 10),
                ),
                height: 40,
                margin: EdgeInsets.all(8.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(81, 23, 19, 5),
        body: SafeArea(
//            child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Image.asset('images/maingif.gif'),
//            Text('HANGMAN',
//                style: TextStyle(
//                    fontFamily: 'Pacifico',
//                    color: Colors.teal.shade50,
//                    fontSize: 40,
//                    fontWeight: FontWeight.bold)),
//            MaterialButton(
//                child: Text(
//                  'PLAY',
//                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                ),
//                textTheme: ButtonTextTheme.accent,
//                color: Colors.orange,
//                onPressed: () {
//                  Navigator.of(context).push(_createRoute());
//                }),
//            Card(
//              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//              color: Colors.white,
//              child: Padding(
//                padding: EdgeInsets.all(15),
//                child: Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.email,
//                      color: Colors.teal,
//                    ),
//                    SizedBox(width: 15.0),
//                    Text(
//                      'Jeraldjacob10@gmail.com',
//                      style: TextStyle(
//                          fontSize: 20.0,
//                          fontFamily: 'Source Sans Pro',
//                          color: Colors.teal),
//                    )
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
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
                color: Color.fromRGBO(90, 58, 29, 10),
                margin: EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/Hangman-Logo.png',
                  width: 295,
                  height: 280,
                ),
              ),

              Container(
                  height: 420,
                  //  color: Color.fromRGBO(76, 118, 45, 10),
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/hangman/three.png'),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Padding(
//Add padding around textfield
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          cursorColor: Colors.white,
                          controller: _textFieldController,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                          decoration: InputDecoration(
//Add th Hint text here.

                            hintText: "_ _ _ _ _ _",
                            hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white60,
                                fontWeight: FontWeight.w300),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      new MaterialButton(
                        padding: const EdgeInsets.all(8.0),
                        // textColor: Colors.re,
                        color: Colors.blue,

                        child: new Text(
                          "Go",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Page4()));
                        },
                      ),
                    ],
                  )),
              Container(
                child: Card(
                  color: Color.fromRGBO(90, 58, 29, 10),
                ),
                height: 40,
                margin: EdgeInsets.all(8.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(81, 23, 19, 5),
        body: SafeArea(
//            child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Image.asset('images/maingif.gif'),
//            Text('HANGMAN',
//                style: TextStyle(
//                    fontFamily: 'Pacifico',
//                    color: Colors.teal.shade50,
//                    fontSize: 40,
//                    fontWeight: FontWeight.bold)),
//            MaterialButton(
//                child: Text(
//                  'PLAY',
//                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                ),
//                textTheme: ButtonTextTheme.accent,
//                color: Colors.orange,
//                onPressed: () {
//                  Navigator.of(context).push(_createRoute());
//                }),
//            Card(
//              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//              color: Colors.white,
//              child: Padding(
//                padding: EdgeInsets.all(15),
//                child: Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.email,
//                      color: Colors.teal,
//                    ),
//                    SizedBox(width: 15.0),
//                    Text(
//                      'Jeraldjacob10@gmail.com',
//                      style: TextStyle(
//                          fontSize: 20.0,
//                          fontFamily: 'Source Sans Pro',
//                          color: Colors.teal),
//                    )
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
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
                color: Color.fromRGBO(90, 58, 29, 10),
                margin: EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/Hangman-Logo.png',
                  width: 295,
                  height: 280,
                ),
              ),

              Container(
                  height: 420,
                  //  color: Color.fromRGBO(76, 118, 45, 10),
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/hangman/four.png'),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Padding(
//Add padding around textfield
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          cursorColor: Colors.white,
                          controller: _textFieldController,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                          decoration: InputDecoration(
//Add th Hint text here.

                            hintText: "_ _ _ _ _",
                            hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white60,
                                fontWeight: FontWeight.w300),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      new MaterialButton(
                        padding: const EdgeInsets.all(8.0),
                        // textColor: Colors.re,
                        color: Colors.blue,

                        child: new Text(
                          "Go",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Page5()));
                        },
                      ),
                    ],
                  )),
              Container(
                child: Card(
                  color: Color.fromRGBO(90, 58, 29, 10),
                ),
                height: 40,
                margin: EdgeInsets.all(8.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(81, 23, 19, 5),
        body: SafeArea(
//            child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Image.asset('images/maingif.gif'),
//            Text('HANGMAN',
//                style: TextStyle(
//                    fontFamily: 'Pacifico',
//                    color: Colors.teal.shade50,
//                    fontSize: 40,
//                    fontWeight: FontWeight.bold)),
//            MaterialButton(
//                child: Text(
//                  'PLAY',
//                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                ),
//                textTheme: ButtonTextTheme.accent,
//                color: Colors.orange,
//                onPressed: () {
//                  Navigator.of(context).push(_createRoute());
//                }),
//            Card(
//              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//              color: Colors.white,
//              child: Padding(
//                padding: EdgeInsets.all(15),
//                child: Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.email,
//                      color: Colors.teal,
//                    ),
//                    SizedBox(width: 15.0),
//                    Text(
//                      'Jeraldjacob10@gmail.com',
//                      style: TextStyle(
//                          fontSize: 20.0,
//                          fontFamily: 'Source Sans Pro',
//                          color: Colors.teal),
//                    )
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
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
                color: Color.fromRGBO(90, 58, 29, 10),
                margin: EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/Hangman-Logo.png',
                  width: 295,
                  height: 280,
                ),
              ),

              Container(
                  height: 420,
                  //  color: Color.fromRGBO(76, 118, 45, 10),
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/hangman/five.png'),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Padding(
//Add padding around textfield
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          cursorColor: Colors.white,
                          controller: _textFieldController,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                          decoration: InputDecoration(
//Add th Hint text here.

                            hintText: "_ _ _ _ _",
                            hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white60,
                                fontWeight: FontWeight.w300),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      new MaterialButton(
                        padding: const EdgeInsets.all(8.0),
                        // textColor: Colors.re,
                        color: Colors.blue,

                        child: new Text(
                          "Go",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Page6()));
                        },
                      ),
                    ],
                  )),
              Container(
                child: Card(
                  color: Color.fromRGBO(90, 58, 29, 10),
                ),
                height: 40,
                margin: EdgeInsets.all(8.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page6 extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(81, 23, 19, 5),
        body: SafeArea(
//            child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Image.asset('images/maingif.gif'),
//            Text('HANGMAN',
//                style: TextStyle(
//                    fontFamily: 'Pacifico',
//                    color: Colors.teal.shade50,
//                    fontSize: 40,
//                    fontWeight: FontWeight.bold)),
//            MaterialButton(
//                child: Text(
//                  'PLAY',
//                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                ),
//                textTheme: ButtonTextTheme.accent,
//                color: Colors.orange,
//                onPressed: () {
//                  Navigator.of(context).push(_createRoute());
//                }),
//            Card(
//              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//              color: Colors.white,
//              child: Padding(
//                padding: EdgeInsets.all(15),
//                child: Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.email,
//                      color: Colors.teal,
//                    ),
//                    SizedBox(width: 15.0),
//                    Text(
//                      'Jeraldjacob10@gmail.com',
//                      style: TextStyle(
//                          fontSize: 20.0,
//                          fontFamily: 'Source Sans Pro',
//                          color: Colors.teal),
//                    )
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
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
                color: Color.fromRGBO(90, 58, 29, 10),
                margin: EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/Hangman-Logo.png',
                  width: 295,
                  height: 280,
                ),
              ),

              Container(
                  height: 420,
                  //  color: Color.fromRGBO(76, 118, 45, 10),
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/hangman/six.png'),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Padding(
//Add padding around textfield
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          cursorColor: Colors.white,
                          controller: _textFieldController,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                          decoration: InputDecoration(
//Add th Hint text here.

                            hintText: "_ _ _ _ _",
                            hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white60,
                                fontWeight: FontWeight.w300),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      new MaterialButton(
                        padding: const EdgeInsets.all(8.0),
                        // textColor: Colors.re,
                        color: Colors.blue,

                        child: new Text(
                          "Go",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Next()));
                        },
                      ),
                    ],
                  )),
              Container(
                child: Card(
                  color: Color.fromRGBO(90, 58, 29, 10),
                ),
                height: 40,
                margin: EdgeInsets.all(8.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page7 extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(81, 23, 19, 5),
        body: SafeArea(
//            child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Image.asset('images/maingif.gif'),
//            Text('HANGMAN',
//                style: TextStyle(
//                    fontFamily: 'Pacifico',
//                    color: Colors.teal.shade50,
//                    fontSize: 40,
//                    fontWeight: FontWeight.bold)),
//            MaterialButton(
//                child: Text(
//                  'PLAY',
//                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                ),
//                textTheme: ButtonTextTheme.accent,
//                color: Colors.orange,
//                onPressed: () {
//                  Navigator.of(context).push(_createRoute());
//                }),
//            Card(
//              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//              color: Colors.white,
//              child: Padding(
//                padding: EdgeInsets.all(15),
//                child: Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.email,
//                      color: Colors.teal,
//                    ),
//                    SizedBox(width: 15.0),
//                    Text(
//                      'Jeraldjacob10@gmail.com',
//                      style: TextStyle(
//                          fontSize: 20.0,
//                          fontFamily: 'Source Sans Pro',
//                          color: Colors.teal),
//                    )
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
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
                color: Color.fromRGBO(90, 58, 29, 10),
                margin: EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/Hangman-Logo.png',
                  width: 295,
                  height: 280,
                ),
              ),

              Container(
                  height: 420,
                  //  color: Color.fromRGBO(76, 118, 45, 10),
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/hangman/seveen.png'),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Padding(
//Add padding around textfield
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          cursorColor: Colors.white,
                          controller: _textFieldController,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                          decoration: InputDecoration(
//Add th Hint text here.

                            hintText: "Enter your name",
                            hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white60,
                                fontWeight: FontWeight.w300),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      new MaterialButton(
                        padding: const EdgeInsets.all(8.0),
                        // textColor: Colors.re,
                        color: Colors.blue,

                        child: new Text(
                          "Finish",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new Next()));
                        },
                      ),
                    ],
                  )),
              Container(
                child: Card(
                  color: Color.fromRGBO(90, 58, 29, 10),
                ),
                height: 40,
                margin: EdgeInsets.all(8.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
