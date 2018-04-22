import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Grid View"),
        ),
        body: new MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        new Container(
          color: Colors.pink,
          child: new Center(
            child: new Text("1"),
          ),
        ),
        new Container(
          color: Colors.cyanAccent,
          child: new Center(
            child: new Text("2"),
          ),
        ),
        new Container(
          color: Colors.orange,
          child: new Center(
            child: new Text("3"),
          ),
        ),
        new Container(
          color: Colors.blueGrey,
          child: new Center(
            child: new Text("4"),
          ),
        ),
        new Container(
          color: Colors.green,
          child: new Center(
            child: new Text("5"),
          ),
        ),
        new Container(
          color: Colors.amber,
          child: new Center(
            child: new Text("6"),
          ),
        ),
        new Container(
          color: Colors.black12,
          child: new Center(
            child: new Text("7"),
          ),
        ),
        new Container(
          color: Colors.purple,
          child: new Center(
            child: new Text("8"),
          ),
        ),
      ],
    );
  }
}
