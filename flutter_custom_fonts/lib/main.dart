import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Custom Typography',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: 'Raleway'
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Custom Typography"),
        ),
        body: new MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text("I am RobotoSlab", style: new TextStyle(
          fontFamily: 'RobotoSlab',
          fontWeight: FontWeight.w700,
          fontSize: 36.00,
        ),),
      ),
    );
  }
}


