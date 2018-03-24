import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Raised Button',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Raised Button"),
        ),

        body: new Center(
          child: new RaisedButton(onPressed: () {},
          child: new Text("Click me!",),
          color: Colors.yellow,),
        ),
      ),
    );
  }
}

