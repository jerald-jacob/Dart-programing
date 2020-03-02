
import 'package:flutter/material.dart';

import 'package:share/share.dart';
import 'alligator_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Alligator> alligators = [
    Alligator(
        name: "Crunchy", description: "A fierce Alligator with many teeth."),
    Alligator(name: "Munchy", description: "Has a big belly, eats a lot."),
    Alligator(
        name: "Grunchy", description: "Scaly Alligator that looks menacing."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My favourite Alligators"),
      ),
      body: Column(
          children: alligators
              .map((Alligator alligator) => Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(alligator.name),
                  subtitle: Text(alligator.description),
                  onTap: () => share(context, alligator),
                )
              ],
            ),
          ))
              .toList()),
    );
  }

  share(BuildContext context, Alligator alligator) {
    final RenderBox box = context.findRenderObject();

    Share.share("${alligator.name} - ${alligator.description}",
        subject: alligator.description,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

}