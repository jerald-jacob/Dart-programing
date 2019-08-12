import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.white12,
          title: Center(child: Text("Welcome")),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/dimond.jpg'),
          ),
        ),
      ),
    ),
  );
}
