import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Column Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter Column Demo"),
        ),

        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             new Text("Hello World !"),
             new Text("Hello World !"),
             new Text("Hello World !"),

          ],
        ),
      ),
    );
  }
}

//Inside column ...
//Can use
// children: <Widget> [
// new Expanded(child: new Text("Hello World"))]


