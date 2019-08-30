import 'package:flutter/material.dart';
import 'package:hangman/Next.dart';
import 'package:splashscreen/splashscreen.dart';

main() {
  runApp(MaterialApp(
    home: MyApp1(),
  ));
}

class MyApp1 extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      loaderColor: Colors.white,
      seconds: 14,
      navigateAfterSeconds: new MainPage(),
      title: new Text(
        'Tell me wow ',
        style: new TextStyle(
          fontSize: 40,
          fontFamily: 'IndieFlower',
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
      ),
      image: new Image.asset('images/tellmewow.png'),
      backgroundColor: Color.fromARGB(237, 188, 59, 100),
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("Flutter Egypt"),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                        onPressed: () {},
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
