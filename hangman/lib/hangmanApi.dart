import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //MyApp({Key key, this.quote}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Quotes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quote of the Day'),
        ),
        body: Center(
          child: FutureBuilder<Quote>(
            future:
                getQuote(), //sets the getQuote method as the expected Future
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                //checks if the response returns valid data
                return Center(
                  child: Column(
                    children: <Widget>[
                      Text(snapshot.data.quote), //displays the quote
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                          " - ${snapshot.data.author}"), //displays the quote's author
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                //checks if the response throws an error
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  Future<Quote> getQuote() async {
    String url =
        'http://api.wordnik.com/v4/words.json/randomWord?api_key=6z3v0sqalah3e85ar9kujn2qrv4eytwlckiuk8l6zptgktmv8';
    final response =
        await http.get(url, headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      return Quote.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}

class Quote {
  final int author;
  final String quote;

  Quote({this.author, this.quote});

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(author: json['id'], quote: json['word']);
  }
}
