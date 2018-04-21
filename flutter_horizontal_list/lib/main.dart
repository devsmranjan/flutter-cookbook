import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Horizontal List',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Horizontal List"),
        ),
        body: new MyHomeBody(),
      ),
    );
  }
}

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
            width: 150.0,
            color: Colors.blue,
            child: new Center(
              child: new Text("1"),
            ),
          ),
          new Container(
            width: 150.0,
            color: Colors.red,
            child: new Center(
              child: new Text("2"),
            ),
          ),
          new Container(
            width: 150.0,
            color: Colors.green,
            child: new Center(
              child: new Text("3"),
            ),
          ),
          new Container(
            width: 150.0,
            color: Colors.blueGrey,
            child: new Center(
              child: new Text("4"),
            ),
          ),
          new Container(
            width: 150.0,
            color: Colors.orange,
            child: new Center(
              child: new Text("5"),
            ),
          ),
          new Container(
            width: 150.0,
            color: Colors.pink,
            child: new Center(
              child: new Text("6"),
            ),
          ),
        ],
      ),
    );
  }
}
